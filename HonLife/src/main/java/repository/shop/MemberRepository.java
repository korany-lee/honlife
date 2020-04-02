package repository.shop;

import java.util.Map;

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
	
	public Map<String, Object> selectOneMem(String userId) {
		String statement = namespace + ".selectOneMem";
		return sqlSession.selectOne(statement, userId);
	}
	
	public String checkId(String id) {
		String statement = namespace + ".chkId";
		return sqlSession.selectOne(statement, id);
	}
}
