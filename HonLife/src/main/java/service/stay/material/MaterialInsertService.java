package service.stay.material;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import Model.DTO.MaterialDTO;
import command.stay.material.MaterialCommand;
import repository.stay.MaterialRepository;

@Service
public class MaterialInsertService {
	@Autowired
	MaterialRepository materialRepository;
	
	public String materialInsert(MaterialCommand materialCommand,HttpServletRequest request) {
		MaterialDTO dto = new MaterialDTO();
		dto.setMaterialNo(materialCommand.getMaterialNo());
		dto.setMaterialType(materialCommand.getMaterialType());
		dto.setMaterialUsage(materialCommand.getMaterialUsage());
		
		//사진저장 위해서
		String storeTotal = "";
				
		for(MultipartFile mf :materialCommand.getMaterialImage()) {
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
		dto.setMaterialPhoto(storeTotal);
		materialRepository.materialInsert(dto);
		
		
		return null;
	}
}
