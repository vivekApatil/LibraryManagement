package com.example.cruddemo.controller;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import com.example.cruddemo.pojo.Transaction;
import com.example.cruddemo.repository.TransactionRepo;
import com.example.cruddemo.service.TransactionService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




@Controller
public class TransactionController {

	@Autowired
	public TransactionService transactionService;
	
	@Autowired
	public TransactionRepo rpRepo;
	
	@GetMapping("/con")
	public String check() {
		String s="connection ok";
		return s;
	}
	 
	@RequestMapping(value = "/combo",method = RequestMethod.GET)
	public String checked() {
		String ab=rpRepo.addgetfireurl();
		return ab;
	}
	
	@RequestMapping("/home")
	public String tranhome()
	{
		
		
		return "Home";
	}
	
	@RequestMapping("/seen")
	public String trandispaly()
	{
		
		
		return "show_tran";
	}
	
//	@RequestMapping(value="/show_all",method= {RequestMethod.GET,RequestMethod.POST})
//	public String insert(@RequestParam int id ,@RequestParam int bid, Model model, HttpServletRequest request)
//	{
//
//		
//		
//		Integer sid  = Integer.valueOf(request.getParameter("did"));
//		Integer bbid  = Integer.valueOf(request.getParameter("bidd"));
//		System.out.println(sid);
//		System.out.println(bbid);
//		
//		ArrayList<String> bname= transactionService.addtrans(id, bid);
//		
//		String studnmae=bname.get(0);
//		String bookname=bname.get(1);
//		
//		System.out.println(studnmae);
//		System.out.println(bookname);
//		
//		model.addAttribute("name",studnmae);
//		model.addAttribute("bname",bookname);
//
//		
//		
//		 return "show_tran";
//	}
//	
	
	@RequestMapping(value = "/show_all", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody ModelAndView show(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mv = new ModelAndView("show_tran");
		
		Integer sid = Integer.parseInt(request.getParameter("id"));
		Integer bbid = Integer.parseInt(request.getParameter("bid"));
		
		System.out.println(sid);
		System.out.println(bbid);

		
		ArrayList<String>info= transactionService.addtrans(sid, bbid);
		
		
		String Sname =info.get(0);
		String Bname =info.get(1);
		
				
		
		System.out.println(Sname);
		System.out.println(Bname);
		
		
		mv.addObject("id", sid);
		mv.addObject("bid", bbid);
		mv.addObject("name",Sname);
		mv.addObject("bname",Bname);
		
		
		
	   
		return mv;
	}
	
	@PostMapping(value= "/insertdate")
	public String insert(Transaction add) {
		
		transactionService.adddate(add);
      
       return "redirect:/showme";
   }
	
	@RequestMapping("/showme")
	public String showky(Model model, Transaction gg)
	{
		model.addAttribute("ki",transactionService.showt(gg));
		return "transaction_all";
	}
	
	@RequestMapping(value = "/delete_tran/{tid}")
    public String deleteContact(@PathVariable int tid) {
        transactionService.deletetran(tid);
        return "redirect:/showme";
    }
	
	@GetMapping(value = "/update_tran/{tid}")
    public String showtranpage(@PathVariable int tid, Model model) {
        model.addAttribute("tid", tid);
        model.addAttribute("command", transactionService.tranfindById(tid));;
        System.out.println(transactionService.tranfindById(tid));
        return "updatetran";
    }
	
	@PostMapping(value = "/update_trandata/{tid}")
    public String updatetran(@PathVariable int tid, Transaction tim) {
        transactionService.updatetran(tim, tid);
        return "redirect:/showme";
    }
	
	

}
