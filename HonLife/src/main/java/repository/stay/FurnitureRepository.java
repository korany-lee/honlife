package repository.stay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.FurnitureDTO;
import Model.DTO.FurnitureWishDTO;
import Model.DTO.SearchDTO;
import Model.DTO.TimeCheckDTO;


@Repository
public class FurnitureRepository {
	@Autowired
	private SqlSession sqlSession;	
	private final String namespace="furnitureMapper";
	
	public void furnitureInsert(FurnitureDTO dto) {
		String statement = namespace + ".furnitureInsert";
		sqlSession.insert(statement, dto);
	}
	
	public List<FurnitureDTO> furnitureList() {
		String statement = namespace +".furnitureList";
		return sqlSession.selectList(statement);
	
	}
	
	public List<FurnitureDTO> selectType(String furnitureType){
		String statement = namespace +".selectType";
		return sqlSession.selectList(statement,furnitureType);
	}
	
	public FurnitureDTO oneSelect(String furnitureNo) {
		String statement = namespace +".oneSelect";
		return sqlSession.selectOne(statement,furnitureNo);
	}
	
	public List<FurnitureDTO> searchSelect(SearchDTO dto) {
		String statement = namespace +".searchSelect";
		return sqlSession.selectList(statement,dto);
	}
	
	public void wishInsert(FurnitureWishDTO dto) {
		String statement = namespace +".wishInsert";
		sqlSession.insert(statement, dto);
	}
	
	public List<FurnitureDTO> fDateChk(TimeCheckDTO dto) {
		String statement = namespace + ".fDateChk";
		return sqlSession.selectList(statement, dto);
	}
	
	public List<String> getFurnitureNo(String userNo){
		String statement = namespace + ".getNo";
		return sqlSession.selectList(statement, userNo);
	}
	public Integer getPrice(String furnitureNo) {
		String statement = namespace + ".getPrice";
		return sqlSession.selectOne(statement, furnitureNo);
	}
	
}
