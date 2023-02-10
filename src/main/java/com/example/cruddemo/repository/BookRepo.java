package com.example.cruddemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.cruddemo.pojo.Book;

public interface BookRepo extends JpaRepository<Book, Integer> {

}
