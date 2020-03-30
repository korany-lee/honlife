package service.care.clean;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import Model.DTO.care.RecruitDTO;
import command.care.clean.EmployeeCommand;
import command.care.clean.RegistCommand;
import repository.care.RegistRepository;

@Service
public class RegistService {
	@Autowired
	RegistRepository registRepository;
	
	
	final String recPATH = "careView\\care\\resume";
	final String empPATH = "careView\\care\\empPhoto";
	public void regist(RegistCommand registCommand, ServletRequest request) {
		RecruitDTO dto = new RecruitDTO();
		dto.setRecruitName(registCommand.getRecruitName());
		String registEmail= (registCommand.getRecruitEmail1()+"@"+ registCommand.getRecruitEmail2());
		
		
		dto.setRecruitNo(registCommand.getRecruitNo());
		dto.setRecruitEmail(registEmail);
		dto.setRecruitClass(registCommand.getRecruitClass());
		dto.setRecruitJumin(registCommand.getRecruitJumin());
		dto.setRecruitPh(registCommand.getRecruitPh());
		
		String addr = registCommand.getRoadAddress()+"\t"+  registCommand.getDetailAddress();
		dto.setRecruitAddr(addr);
		dto.setPostcode(registCommand.getPostcode());
		
		System.out.println("postCode ="+ registCommand.getPostcode());
		dto.setRecruitGender(registCommand.getRecruitGender());	
		
		// 파일을 담기위한 객체를 생성.
				String originalTotal = "";
				String storeTotal = "";
				String fileSizeTotal = "";
				String filePath = request.getServletContext().getRealPath(recPATH);
				System.out.println();
				System.out.println("filepath: " + filePath);
				
				for( MultipartFile mf : registCommand.getRecruitResume()) {
					
					String original = mf.getOriginalFilename();
					String originalFileExtension =  original.substring(original.lastIndexOf("."));
					String store = UUID.randomUUID().toString().replace("-","") + originalFileExtension;
					Long fileSize = mf.getSize();
					
			         originalTotal += original + "-";
					 storeTotal += store + "-";
					 fileSizeTotal += fileSize + "-";	
					 
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
			   String storeTotal1 = "";
			   
			   for( MultipartFile mf1 : registCommand.getRecruitPhoto()) {
				   String original1 = mf1.getOriginalFilename();
				   
				   String originalFileExtension1 =    
							original1.substring(original1.lastIndexOf("."));
				   
				   String store1 = UUID.randomUUID().toString().replace("-","")
							+ originalFileExtension1;
				   
				   storeTotal1 += store1 + "-";
				   String path = request.getServletContext().getRealPath("/");
				   path += "careView\\care\\recruitPhoto\\";
			   
				   File file1 = new File(path+store1);
				   
				   try {
					mf1.transferTo(file1);
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				   
			   
			   
			   }
				 
			   dto.setRecruitPhoto(storeTotal1);
		
				registRepository.regist(dto);
									
		
	}
	
	
	
	public void empRegist(Integer recNum,EmployeeCommand employeeCommand) {
		
		
		
		
		
		
	}
	
	
	
}
