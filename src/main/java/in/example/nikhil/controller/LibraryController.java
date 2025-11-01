package in.example.nikhil.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import in.example.nikhil.model.Book;
import in.example.nikhil.service.IBookService;

@Controller
public class LibraryController {
	
	@Autowired
	private IBookService service;
	
	@GetMapping("/")
	public String showPage() {
		return "redirect:new-book";
	}
	
	@GetMapping("/new-book")
	public String showBookCreationForm(Model model) {
		model.addAttribute("book", new Book());
		return "new-book";
	}
	
	@PostMapping("/add")
	public String addNewBook(Book book, Model model) {
		System.out.println(book);
		service.saveBook(book);
		model.addAttribute("books", service.findAllBooks());
		return "books";
	}
	
	@GetMapping("/{id}")
	public String showBookById(@PathVariable Integer id, Model model) {
		Book book = service.findBookById(id).orElseThrow(() -> new IllegalArgumentException(
				"Invalid book id :" + id));
		model.addAttribute("book", book);
		return "edit-book";
	}
	
	@GetMapping("/disp")
	public String showAllBooks(Model model) {
		model.addAttribute("books", service.findAllBooks());
		return "books";
	}
	
	@PostMapping("/{id}/delete")
	public String deleteBookById(@PathVariable Integer id, Model model) {
		service.findBookById(id).orElseThrow(() -> new IllegalArgumentException(
				"Invalid book id :" + id));
		service.deleteBookById(id);
		model.addAttribute("books", service.findAllBooks());
		return "books";
	}
	
	@PostMapping("/{id}/update")
	public String updateBook(@PathVariable Integer id, Model model, Book book) {
		service.findBookById(id).orElseThrow(() -> new IllegalArgumentException(
				"Invalid book id :: " + id));
		service.saveBook(book);
		model.addAttribute("books", service.findAllBooks());
		return "books";
	}

}
