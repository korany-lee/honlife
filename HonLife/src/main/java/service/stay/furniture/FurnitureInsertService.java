package service.stay.furniture;

import java.io.File;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import Model.DTO.FurnitureDTO;
import repository.stay.FurnitureRepository;
import command.stay.furniture.FurnitureCommand;

@Service
public class FurnitureInsertService {
	@Autowired
	FurnitureRepository furnitureRepository;
	
	public String furnitureInsert(FurnitureCommand furnitureCommand,HttpServletRequest request) {
		FurnitureDTO dto = new FurnitureDTO();
		dto.setFurnitureNo(furnitureCommand.getFurnitureNo());
		dto.setFurnitureColor(furnitureCommand.getFunitureColor());
		dto.setFurnitureType(furnitureCommand.getFurnitureType());
		dto.setFurniturePoint(furnitureCommand.getFurnitureContent());
		dto.setFurnitureRentalFee(furnitureCommand.getRentalFee());
		dto.setFurnitureName(furnitureCommand.getFurnitureName());
		dto.setFurnitureUsage(furnitureCommand.getFurnitureExtra());
		
		//사진저장 위해서
				String storeTotal = "";
				
				for(MultipartFile mf :furnitureCommand.getFurnitureImage()) {
					String original = mf.getOriginalFilename();// 파일 업로드할때 탐색창에서 나오는 이름
					String originalFileExtension = original.substring(original.lastIndexOf("."));
					String store = UUID.randomUUID().toString().replace("-", "") + originalFileExtension;   //시스템에 저장되는거
				
					storeTotal += store+"-";
					
					String path = request.getServletContext().getRealPath("/");  // webapp까지만...
					path +="common\\manager\\update\\";
					
					File file = new File(path+store);
					try {
						mf.transferTo(file);   //파일객체를 생성해서 파일을 저장
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}    
				}
				dto.setFurniturePhoto(storeTotal);
		
		//날짜 저장	
			dto.setFurnitureBuydate(new Timestamp(furnitureCommand.getBuyDate().getTime()));
			furnitureRepository.furnitureInsert(dto);	
						
				
		
		return null;
	}
	
}
