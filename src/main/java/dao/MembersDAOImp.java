package dao;

import org.mybatis.spring.SqlSessionTemplate;

import dto.MembersDTO;

public class MembersDAOImp implements MembersDAO{

	
	private SqlSessionTemplate sqlSession;
	
	public MembersDAOImp() {
		// TODO Auto-generated constructor stub
	}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	@Override
	public void newMember(MembersDTO dto) {
		sqlSession.insert("members.join", dto);
		
	}
}
