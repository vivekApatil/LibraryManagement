package com.example.cruddemo.service;



import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.example.cruddemo.pojo.Transaction;
import com.example.cruddemo.repository.TransactionRepo;


@Service
public class TransactionService {
	
	@Autowired
	public TransactionRepo transactionRepo;
	
	public String sun() {
		
		return transactionRepo.sample();
	}
	
	
	public ArrayList<String> addtrans(int id,int bid)
	{
		
		return transactionRepo.intran(id,bid);
		 
	}
	
	public String adddate(Transaction kk) {
        return transactionRepo.vdate(kk);
    }
	
	public List<Transaction> showt(Transaction j) {
        return transactionRepo.trandisplay(j);
    }
	
	public String deletetran(int tid) {
        transactionRepo.deletetid(tid);
        return "record deleted";
    }
	
	public Transaction tranfindById(int tid)
	{
		return transactionRepo.tfindbyid(tid);
	}
	
	public String updatetran(Transaction t,Integer tid)
	{
		return transactionRepo.jeevan(t,tid);
	}




}
