package com.example.StudentCrud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.StudentCrud.domain.Student;
import com.example.StudentCrud.repository.StudentRepository;

@Service
public class StudentService {

	@Autowired
	private StudentRepository repo;
	
	
	public List<Student> ListAll()
	{
		return repo.findAll();
	}
	
	public void save(Student stud) {
		   repo.save(stud);
	}
	
	public Student get(long id) {
		return repo.findById(id).get();
	}
	
	public void delete(long id) {
		repo.deleteById(id);
	}

	public List<Student> listAll() {
		// TODO Auto-generated method stub
		return null;
	}
}
