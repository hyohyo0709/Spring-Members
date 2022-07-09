package service;

import dao.MembersDAO;
import dto.MembersDTO;

public class MembersServiceImp implements MembersService{

	private MembersDAO dao;
	public void setDao(MembersDAO dao) {
		this.dao = dao;
	}
	
	public MembersServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void newMembersProcess(MembersDTO dto) {
		dao.newMember(dto);
		
	}
}
