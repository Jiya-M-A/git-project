package com.ty.studentApp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.ty.studentApp.entity.Student;

public class StudentAppDao {

	EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("vikas");
	EntityManager entityManager=entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	
	public void saveStudent(Student student) {
		entityTransaction.begin();
		entityManager.persist(student);
		entityTransaction.commit();
	}
	
	public List<Student> getAllStudent() {
		Query query = entityManager.createQuery("select s from Student s");
		List<Student> students = query.getResultList();
		return students;
	}

	public void deleteStudent(int id) {
		Student student = entityManager.find(Student.class, id);
		entityTransaction.begin();
		entityManager.remove(student);
		entityTransaction.commit();
	}

	public Student getStudentById(int id) {
		Student student = entityManager.find(Student.class, id);
		return student;
	}

	public void updateStudent(Student student) {
		entityTransaction.begin();
		entityManager.merge(student);
		entityTransaction.commit();
	}

}
