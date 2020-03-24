package service.care.clean;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import Model.DTO.care.RecruitDTO;
import command.care.clean.RegistCommand;
import repository.care.RegistRepository;

@Service
public class RegistService {
	@Autowired
	RegistRepository registRepository;
	
	
	final String PATH = "careView\\care\\resume";
	public void regist(RegistCommand registCommand, ServletRequest request) {
		RecruitDTO dto = new RecruitDTO();
		dto.setRecruitName(registCommand.getRecruitName());
		String registEmail= (registCommand.getRecruitEmail1()+"@"+ registCommand.getRecruitEmail2());
		
		
		dto.setRecruitNo(registCommand.getRecruitNo());
		dto.setRecruitEmail(registEmail);
		dto.setRecruitClass(registCommand.getRecruitClass());
		dto.setRecruitJumin(registCommand.getRecruitJumin());
		dto.setRecruitPh(registCommand.getRecruitPh());
		dto.setRecruitAddr(registCommand.getRecruitAddr());
		dto.setRecruitGender(registCommand.getRecruitGender());
		
		// 파일을 담기위한 객체를 생성.
				String originalTotal = "";
				String storeTotal = "";
				String fileSizeTotal = "";
				String filePath = request.getServletContext().getRealPath(PATH);
				System.out.println();
				System.out.println("filepath: " + filePath);
				
				for( MultipartFile mf : registCommand.getRecruitResume()) {
					
					String original = mf.getOriginalFilename();
					String originalFileExtension =  original.substring(original.lastIndexOf("."));
					String store = UUID.randomUUID().toString().replace("-","") + originalFileExtension;
					Long fileSize = mf.getSize();
					
			         originalTotal += original + "-";
					 storeTotal += store + "-";
					 fileSizeTotal += fileSize;	
					 
					 File file = new File(filePath +"\\"+ store);
					 try {
						mf.transferTo(file);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						request.setAttribute("fileError", "용량이 초과했슴.");
						
						e.printStackTrace();
					}
				}

			   dto.setOriginalFileName(originalTotal);
			   dto.setStoreFileName(storeTotal);
			   dto.setFileSize(fileSizeTotal);

				
		
				registRepository.regist(dto);
									 
	
	
		
	}
	
	
}
