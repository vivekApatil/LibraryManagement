package com.example.cruddemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.cruddemo.pojo.Book;
import com.example.cruddemo.service.BookService;

@Controller
public class BookController {
	
	@Autowired
	public BookService bookService;
	
	@RequestMapping("/saw")
	public String bookdisplay(Model model)
	{
		model.addAttribute("command", new Book());
		return "bookadd";
	}
	
	@PostMapping(value= "/bookinsert")
	 public String insert(@ModelAttribute("addbook") Book book1) {
		
		bookService.addbooks(book1);
       
        return "redirect:/showbooks";
    }
	
	@RequestMapping("/showbooks")
    public String showsbook(Model model) {
        model.addAttribute("pp", bookService.findAllbook());
        
        return "show_book";
	}
	
	@RequestMapping(value = "/update_book/{bid}")
    public String upbookpage(@PathVariable int bid, Model model) {
        model.addAttribute("bid", bid);
        model.addAttribute("command", bookService.bookfindByBid(bid).orElse(null));
        return "upbook";
    }
	
	@RequestMapping(value = "/update_bookdata/{bid}", method = RequestMethod.POST)
    public String updatebook(@PathVariable int bid, @ModelAttribute("contact") Book bk) {
        bookService.updatebook(bid, bk);
        return "redirect:/showbooks";
    }
	
	@RequestMapping(value = "/delete_book/{bid}")
    public String deletebook(@PathVariable int bid) {
        bookService.deletebook(bid);
        return "redirect:/showbooks";
    }

}
