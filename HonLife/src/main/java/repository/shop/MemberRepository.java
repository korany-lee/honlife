package repository.shop;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.LoginDTO;
import Model.DTO.MemberDTO;

@Repository
public class MemberRepository{
	@Autowired
	private SqlSession sqlSession;
	
	private final String namespace = "memberMapper";
	
	public Integer insertMem(MemberDTO member, HttpServletResponse response) {
		String statement = namespace + ".insertMember";
		Integer result = sqlSession.insert(statement, member);
		
		return result;
	}
	
	public MemberDTO selectOneMem(String userId) {
		String statement = namespace + ".selectOneMem";
	
		return sqlSession.selectOne(statement, userId);
	}
	
	public String checkId(String id) {
		String statement = namespace + ".chkId";
		return sqlSession.selectOne(statement, id);
	}
	
	public String checkPw(LoginDTO dto) {
		String statement = namespace + ".chkPw";
		return sqlSession.selectOne(statement,dto);
	}
	
	public String selectNum(LoginDTO dto) {
		String statement = namespace + ".selectUserNo";
		return sqlSession.selectOne(statement,dto);
	}
}
