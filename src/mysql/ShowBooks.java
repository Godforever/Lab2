package mysql;

import infor.Author;
import mysql.DBconn;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;


public class ShowBooks {

	List<Author> lista = new ArrayList<Author>();

	private Connection conn = null;
	private DBconn dao = new DBconn();
	
	public List<Author> Choose(String na) throws Exception {
		lista = new ArrayList<Author>();
		try {
			conn = dao.GetConn();
			Statement stat = conn.createStatement();
			String sqlStatement = "SELECT book.ISBN AS isbn,book.Title AS title,book.AuthorID AS authorID,book.Publisher AS publisher,book.Publishdate AS publishdate,book.Price AS price,author.Name AS name,author.Age AS age,author.Country AS country FROM book JOIN author  ON author.AuthorID=book.AuthorID  where author.Name ="+ "'" + na + "'";
			ResultSet set = stat.executeQuery(sqlStatement);
			while (set.next()) {
				Author author = new Author();
				author.setTitle(set.getString("title"));   
				author.setAuthorID(set.getString("authorID")); 
				lista.add(author);
			}
			conn.close(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}
	
	
	public List<Author> showDetails(String tit) throws Exception {
		lista = new ArrayList<Author>();
		try {
			conn = dao.GetConn();
			Statement stat = conn.createStatement();
			String sqlStatement = "SELECT book.ISBN AS isbn,book.Title AS title,book.AuthorID AS authorID,book.Publisher AS publisher,book.Publishdate AS publishdate,book.Price AS price,author.Name AS name,author.Age AS age,author.Country AS country FROM book JOIN author  ON author.AuthorID=book.AuthorID  where book.Title="+ "'" + tit + "'";
			ResultSet set = stat.executeQuery(sqlStatement);
			while (set.next()) {
				Author author = new Author();
				author.setName(set.getString("name"));
				author.setCountry(set.getString("country"));
				author.setAge(set.getString("age"));
				author.setAuthorID(set.getString("authorID"));
				author.setIsbn(set.getString("isbn"));
				author.setTitle(set.getString("title"));
				author.setPublisher(set.getString("publisher"));
				author.setPublishdate(set.getString("publishdate"));
				author.setPrice(set.getString("price"));
				lista.add(author);
			}
			conn.close(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}
	
	public List<Author> showAll() throws Exception {
		lista = new ArrayList<Author>();
		try {
			conn = dao.GetConn();
			Statement stat = conn.createStatement();
			List<String> isbnList = new ArrayList<>();
			String sqlstatement =  "SELECT ISBN from book";
			ResultSet setISBN = stat.executeQuery(sqlstatement);
			while (setISBN.next()) {
				isbnList.add(setISBN.getString("ISBN"));
			}
			for(String isbn  : isbnList){
				String sqlStatement = "SELECT book.ISBN AS isbn,book.Title AS title,book.AuthorID AS authorID,book.Publisher AS publisher,book.Publishdate AS publishdate,book.Price AS price,author.Name AS name,author.Age AS age,author.Country AS country FROM book JOIN author  ON author.AuthorID=book.AuthorID  where book.ISBN="+ "'" +isbn + "'";
				ResultSet set = stat.executeQuery(sqlStatement);
				while (set.next()) {
					Author author = new Author();
					author.setName(set.getString("name"));
					author.setCountry(set.getString("country"));
					author.setAge(set.getString("age"));
					author.setAuthorID(set.getString("authorID"));
					author.setIsbn(set.getString("isbn"));
					author.setTitle(set.getString("title"));
					author.setPublisher(set.getString("publisher"));
					author.setPublishdate(set.getString("publishdate"));
					author.setPrice(set.getString("price"));
					lista.add(author);
				}
			}
			conn.close(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}

	
	public List<Author> deleteOne(String isbn) throws Exception {
		lista = new ArrayList<Author>();
		try {
			conn = dao.GetConn();
			Statement stat = conn.createStatement();
			String sqlStatement = "DELETE from book where ISBN ="+ "'" + isbn + "'";
			stat.executeUpdate(sqlStatement);
			conn.close(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}
	
	public List<Author> addOneBook(String isn,String tit,String id,String pub,String pubdt,String pri)
    {
		lista = new ArrayList<Author>();
		try {
        	conn = dao.GetConn();
			Statement stat = conn.createStatement();
			String sqlStatement = "INSERT into book (ISBN,Title,AuthorID,Publisher,Publishdate,Price) values ('" +isn+ "','"+tit+ "','"+ id+ "','"+pub+ "','"+ pubdt+ "','"+ pri+ "')";
			stat.executeUpdate(sqlStatement);			
			conn.close(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
    }
	
	public List<Author> addOneAuthor(String id,String na,String ag,String conty)
    {
		lista = new ArrayList<Author>();
		try {
        	conn = dao.GetConn();
			Statement stat = conn.createStatement();
			String sqlStatement = "INSERT into author (AuthorID,Name,Age,Country) values ('" +id+ "','"+na+ "','"+ ag+ "','"+conty+  "')";
			System.out.println(sqlStatement);
			stat.executeUpdate(sqlStatement);			
			conn.close(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
    }
	
	public List<Author> updateOne(String id,String tit,String pub,String pubdt,String pri) 
    {
		lista = new ArrayList<Author>();
		try {
			conn = dao.GetConn();
			Statement stat = conn.createStatement();
			String sqlStatement = "UPDATE book SET Publisher='"+pub+"',Publishdate='"+pubdt+"',Price='"+pri+"',AuthorID='"+id+"'where Title="+ "'" + tit + "'";
			System.out.println(sqlStatement);
			stat.executeUpdate(sqlStatement);
            conn.close(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
    }

	public List<Author> queryAuthor(String na) throws Exception {
		lista = new ArrayList<Author>();
		try {
			conn = dao.GetConn();
			Statement stat = conn.createStatement();
			String sqlStatement = "SELECT author.AuthorID AS authorID,author.Name AS name,author.Age AS age,author.Country AS country from author  where author.Name="+ "'" + na + "'";
			System.out.println(sqlStatement);
			ResultSet set = stat.executeQuery(sqlStatement);
			while (set.next()) {
				Author author = new Author();
				/*author.setName(set.getString("name"));
				author.setCountry(set.getString("country"));
				author.setAge(set.getInt("age"));*/
				author.setAuthorID(set.getString("authorID"));
				lista.add(author);
			}
			conn.close(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}
	
	
	
	
}