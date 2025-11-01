package in.example.nikhil.dao;

import org.springframework.data.repository.CrudRepository;

import in.example.nikhil.model.Book;

public interface IBookRepository extends CrudRepository<Book, Integer>{

}
