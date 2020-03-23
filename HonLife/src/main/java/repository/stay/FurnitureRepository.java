package repository.stay;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.FurnitureDTO;


@Repository
public class FurnitureRepository {
	@Autowired
	private SqlSession sqlSession;	
	private final String namespace="furnitureMapper";
	
	public void furnitureInsert(FurnitureDTO dto) {
		System.out.println("번호=" + dto.getFurnitureNo());
		System.out.println("날짜 =" +dto.getFurnitureBuydate());
		System.out.println("사진 =" + dto.getFurniturePhoto());
		System.out.println("타입 =" + dto.getFurnitureType());
		System.out.println("설명 =" + dto.getFurniturePoint());
		System.out.println("가격 =" + dto.getFurnitureRentalFee());
		System.out.println("예비 =" +dto.getFurnitureUsage());
		System.out.println("이름 = " + dto.getFurnitureName());
		System.out.println("색상 =" +dto.getFurnitureColor());
		String statement = namespace + ".furnitureInsert";
		sqlSession.insert(statement, dto);
	}
}
