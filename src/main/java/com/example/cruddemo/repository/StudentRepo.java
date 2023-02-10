package com.example.cruddemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.cruddemo.pojo.Student;

public interface StudentRepo extends JpaRepository<Student, Integer> {

}
