package repository.shop;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
