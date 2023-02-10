package com.example.cruddemo.repository;




import java.io.BufferedReader;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import org.springframework.stereotype.Repository;

import com.example.cruddemo.pojo.Transaction;












@Repository
public class TransactionRepo {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public String sample() {
		
		return "hiiii";
	}
	

	
	public ArrayList<String> intran(int id,int bid) {

        String sql = "SELECT name FROM student WHERE id = ?";
        String sql1 = "SELECT book_name FROM book WHERE bid = ?";
        String name= jdbcTemplate.queryForObject(sql,String.class, new Object[]{id});
        String bookname= jdbcTemplate.queryForObject(sql1,String.class, new Object[]{bid});
        System.out.println("hello"+ name +" book name "+ bookname );
       ArrayList<String> details= new ArrayList<String>();
       details.add(name);
       details.add(bookname);
        return details;
    }
	
	public String vdate(Transaction asp) {
		
		String sql2 = "insert into transaction(id,sname,bid,bookname,issue_date,return_date) values(?,?,?,?,?,?)";
		 int result1 = jdbcTemplate.update(sql2,new Object[]{asp.getId(),asp.getSname(),asp.getBid(),asp.getBookname(),asp.getIssue_date(),asp.getReturn_date()});
		
		return "date added";
	}
	
	public List<Transaction> trandisplay(Transaction m)
	{
		
					
			return jdbcTemplate.query("SELECT tid,id,sname,bid,bookname,issue_date,return_date,DATEDIFF(return_date ,issue_date) AS count FROM transaction", new BeanPropertyRowMapper<Transaction>(Transaction.class));
				
	}
	
	public String deletetid(Integer tid)
	{
		String sql4="delete from transaction where tid=(?)";
		int result2 = jdbcTemplate.update(sql4,new Object[] {tid});
		if (result2>0)
		{
			
			return "Data deleted";
		}
		return "hello";
	}
	
	public Transaction tfindbyid(int tid)
	{
		
			
				
			Transaction k=jdbcTemplate.queryForObject("select return_date from library.transaction where tid=(?)",new BeanPropertyRowMapper<Transaction>(Transaction.class),tid);
			System.out.println("dhoom "+k); 	
			return k;
	}
	
	public String jeevan(Transaction t, int tid)
	{
		String sql5="update library.transaction set  return_date=? where tid= (?)";
		int result3 = jdbcTemplate.update(sql5,new Object[]{t.getReturn_date(),tid});
		System.out.println("hello "+t.getReturn_date());
		if (result3>0)
		{
			
			return "Data Updated";
		}
		return "hello";

	}
	
	public String addgetfireurl() {
		String response = ""; 
		try {
		    URL url = new URL("http://localhost:9198/con");
		    
		    HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		    connection.setRequestMethod("GET");

		    int responseCode = connection.getResponseCode();
		    if (responseCode == 200) {
		    	System.out.println("Request success: " + responseCode);
		      BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
		      String inputLine;
		      StringBuffer response1 = new StringBuffer();
		      while ((inputLine = in.readLine()) != null) {
		        response1.append(inputLine);
		        
		      }
		      in.close();
		      System.out.println(response1.toString());
		    } else {
		      System.out.println("Request failed with response code: " + responseCode);
		    }
		} catch (Exception e) {
			// TODO: handle exception
			response = "TimeOut";
			e.printStackTrace();
			
		}
//		return response;
		return "200 ok";

   }


}
