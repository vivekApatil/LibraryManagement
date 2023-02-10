package com.example.cruddemo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.cruddemo.pojo.Book;
import com.example.cruddemo.repository.BookRepo;

@Service
public class BookService {

	@Autowired
	public BookRepo bookRepo;
	
	public Book addbooks(Book vp) {
        return bookRepo.save(vp);
    }
	
	public List<Book> findAllbook() {
        return bookRepo.findAll();
    }
	
	public Optional<Book> bookfindByBid(int bid) {
        return bookRepo.findById(bid);
    }
	
	public Book updatebook(int bid, Book s2) {
        Book updatedbook = bookRepo.findById(bid).orElse(null);
        updatedbook.setBook_name(s2.getBook_name());
        updatedbook.setDiscription(s2.getDiscription());
        updatedbook.setAuthor(s2.getAuthor());
        updatedbook.setQty(s2.getQty());
        updatedbook.setPrice(s2.getPrice());
        return bookRepo.save(updatedbook);
    }
	
	public String deletebook(int bid) {
        bookRepo.deleteById(bid);
        return "record deleted";
    }
}
