package repository.manager;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CountRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace="mapper.countMapper";
	public Integer recruitCount() {
		
		String statement = namespace +".recruitCount";		
		
		return sqlSession.selectOne(statement);
	}
	
	
	
}
