package service.shop;

import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import Model.DTO.ProductDTO;
import command.shop.ProductCommand;
import repository.shop.ProductRepository;

@Service
public class ProductInsertService {
	@Autowired
	ProductRepository pr;
	
	public String productInsert(ProductCommand pc, HttpServletRequest request) throws Exception {
		ProductDTO dto = new ProductDTO();
		dto.setProductName(pc.getProductName());
		dto.setProductType(pc.getProductType());
		dto.setProductDetailtype(pc.getProductDetailtype());
		dto.setProductPrice(pc.getProductPrice());
		dto.setProductCount(pc.getProductCount());
		
		//유통기한이 없는 제품의 경우
		try {
			SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
			
		}catch(Exception e) {
			
			

			//SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
			//Date date = sd.parse("2020-04-01");
			//String noDate = sd.format(date);
			Timestamp productUsedate;
			if(pc.getProductUsedate() == null) {
				//yyyy-mm-dd hh:mm:ss.fffffffff
				productUsedate = java.sql.Timestamp.valueOf("2025-04-01 00:00:00.000000000");
				dto.setProductUsedate(productUsedate);
			}else {
				productUsedate = new Timestamp(pc.getProductUsedate().getTime());
				dto.setProductUsedate(productUsedate);			
			}
			System.out.println("date출력"+productUsedate);
		}
	
		String storeTotal = "";
		
		for(MultipartFile mf : pc.getProductPhoto()) {
			String original = mf.getOriginalFilename();// 파일 업로드할때 탐색창에서 나오는 이름
			String originalFileExtension = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-", "") + originalFileExtension;   //시스템에 저장되는거
		
			storeTotal += store+"-";
			
			String path = request.getServletContext().getRealPath("/");  // webapp까지만...
			path +="shopView\\update\\";
			
			File file = new File(path+store);
			try {
				mf.transferTo(file);   //파일객체를 생성해서 파일을 저장
			} catch (Exception e) {
				e.printStackTrace();
			}    
		}
		dto.setProductPhoto(storeTotal);
		
		pr.productInsert(dto);
		System.out.println("실행2---------");
		
		return null;
		
	}

}
