package repository.shop;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.MemberDTO;

@Repository
public class MemberRepository{
	@Autowired
	private SqlSession sqlSession;
	
	private final String namespace = "memberMapper";
	
	public Integer insertMem(MemberDTO member) {
		String statement = namespace + ".insertMember";
		Integer result = sqlSession.insert(statement, member);
	
		return result;
	}
}
