package action;

import infor.Author;
import mysql.ShowBooks;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BookAction extends ActionSupport {

	private String isbn;
	private String title;
	private String authorID;
	private String publisher;
	private String publishdate;
	private String price;

	private String name;
	private String age;
	private String country;

	private List<Author> lista = new ArrayList<>();

	public List<Author> getLista() {
		return lista;
	}

	public void setLista(List<Author> lista) {
		this.lista = lista;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthorID() {
		return authorID;
	}

	public void setAuthorID(String authorID) {
		this.authorID = authorID;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getPublishdate() {
		return publishdate;
	}

	public void setPublishdate(String publishdate) {
		this.publishdate = publishdate;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String execute() throws Exception {
		ShowBooks book = new ShowBooks();
		this.setLista(book.Choose(name));
		return "list";
	}

	public String showDetails() throws Exception {
		ShowBooks info = new ShowBooks();
		this.setLista(info.showDetails(title));
		return "success";
	}
	public String showAll() throws Exception {
		ShowBooks info = new ShowBooks();
		this.setLista(info.showAll());
		return "allsuccess";
	}

	public String delete() throws Exception {
		ShowBooks one = new ShowBooks();
		this.setLista(one.deleteOne(isbn));
		return "deleteok";
	}

	public String judgeAuthor() throws Exception {
		ShowBooks book = new ShowBooks();
		this.setLista(book.queryAuthor(name));
		if (lista.isEmpty()) {
			return "notexit";
		}
		return "exit";

	}

	public String addAuthor() throws Exception {
		ShowBooks book = new ShowBooks();
		// this.setLista(book.queryAuthor(name));
		this.setLista(book.addOneAuthor(authorID, name, age, country));
		return "addauthorok";
	}
	
	public String addBook() throws Exception {
		ShowBooks book = new ShowBooks();
		this.setLista(book.addOneBook(isbn, title, authorID, publisher,publishdate, price)); 
		return "addbookok";
	}


	public String update() throws Exception {
		ShowBooks up = new ShowBooks();
		this.setLista(up.updateOne(authorID,title, publisher,publishdate, price));
		return "updateok";
	}
	


}
