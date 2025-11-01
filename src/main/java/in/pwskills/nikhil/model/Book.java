package in.pwskills.nikhil.model;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name="LIBRARY_OF_BOOKS")
public class Book implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name="AUTHOR_NAME", length = 20)
	private String author;

	@Column(name="BOOK_NAME", length = 20)
	private String name;
	
	@Override
	public String toString() {
		return "Book [id=" + id + ", author=" + author + ", name=" + name + "]";
	}

	public Integer getId() {
		System.out.println("Book.getId()");
		return id;
	}

	public void setId(Integer id) {
		System.out.println("Book.setId()");
		this.id = id;
	}

	public String getAuthor() {
		System.out.println("Book.getAuthor()");
		return author;
	}

	public void setAuthor(String author) {
		System.out.println("Book.setAuthor()");
		this.author = author;
	}

	public String getName() {
		System.out.println("Book.getName()");
		return name;
	}

	public void setName(String name) {
		System.out.println("Book.setName()");
		this.name = name;
	}

}
