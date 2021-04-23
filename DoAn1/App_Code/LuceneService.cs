using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Lucene.Net.Analysis;
using Lucene.Net.Documents;
using Lucene.Net.Index;
using Lucene.Net.QueryParsers;
using Lucene.Net.Search;
using Lucene.Net.Store;

/// <summary>
/// Summary description for LuceneService
/// </summary>
public interface ILuceneService
{
    void BuildIndex(IEnumerable<DataFileRow> dataToIndex);
    IEnumerable<DataFileRow> Search(string searchTerm);
    void CloseWriter();
}
public class LuceneService : ILuceneService
{
    // Note there are many different types of Analyzer that may be used with Lucene, the exact one you use
    // will depend on your requirements
    private Analyzer analyzer = new WhitespaceAnalyzer();
    private Directory luceneIndexDirectory;
    private IndexWriter writer;
    private string indexPath = @"c:\temp\LuceneIndex";

    public LuceneService()
    {
        InitialiseLucene();

    }

    private void InitialiseLucene()
    {
        if (System.IO.Directory.Exists(indexPath))
        {
            System.IO.Directory.Delete(indexPath, true);
        }
    }

    public void BuildIndex(IEnumerable<DataFileRow> dataToIndex)
    {
        luceneIndexDirectory = FSDirectory.GetDirectory(indexPath);
        writer = new IndexWriter(luceneIndexDirectory, analyzer, true);
        foreach (var sampleDataFileRow in dataToIndex)
        {

            Document doc = new Document();
            doc.Add(new Field("LineNumber", sampleDataFileRow.LineNumber.ToString(), Field.Store.YES, Field.Index.UN_TOKENIZED));
            doc.Add(new Field("LineText", sampleDataFileRow.LineText.ToLower(), Field.Store.YES, Field.Index.TOKENIZED));
            writer.AddDocument(doc);
        }

        writer.Optimize();

        //delete doc
        writer.Flush();
        writer.Close();
        

    }

    public void CloseWriter()
    {

        
    }

    public IEnumerable<DataFileRow> Search(string searchTerm)
    {
        IndexSearcher searcher = new IndexSearcher(luceneIndexDirectory);
        QueryParser parser = new QueryParser("LineText", analyzer);
        
        Query query = parser.Parse(searchTerm);
        Hits hitsFound = searcher.Search(query);
        
        List<DataFileRow> results = new List<DataFileRow>();
        DataFileRow sampleDataFileRow = null;

        for (int i = 0; i < hitsFound.Length(); i++)
        {
            sampleDataFileRow = new DataFileRow();
            Document doc = hitsFound.Doc(i);
            sampleDataFileRow.LineNumber = int.Parse(doc.Get("LineNumber"));
            sampleDataFileRow.LineText = doc.Get("LineText");
            float score = hitsFound.Score(i);
            sampleDataFileRow.Score = score;

            results.Add(sampleDataFileRow);
        }
        luceneIndexDirectory.Close();
        searcher.Close();
        return results.OrderByDescending(x => x.Score).ToList();
    }
}