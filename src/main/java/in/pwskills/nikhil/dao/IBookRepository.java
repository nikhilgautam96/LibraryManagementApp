package in.pwskills.nikhil.dao;

import org.springframework.data.repository.CrudRepository;

import in.pwskills.nikhil.model.Book;

public interface IBookRepository extends CrudRepository<Book, Integer>{

}
