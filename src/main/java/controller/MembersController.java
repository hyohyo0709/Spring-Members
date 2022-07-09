package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dto.MembersDTO;
import service.MembersService;

// http://localhost:8090/myapp/members.ee

@Controller
public class MembersController {

	private MembersService service;

	public void setService(MembersService service) {
		this.service = service;
	}
	public MembersController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping(value = "/members.ee")
	public ModelAndView joinMembers(ModelAndView mav) {
		mav.setViewName("members");
		return mav;
	}
	
	
	@RequestMapping(value = "/join.ee", method = RequestMethod.POST)
	public String newMembersMethod(MembersDTO dto) {
		
		service.newMembersProcess(dto);
		return "redirect:/members.ee";
		
	}
}
