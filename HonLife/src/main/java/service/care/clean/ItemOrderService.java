package service.care.clean;


import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.CleanItemDTO;
import Model.DTO.care.CleanOrderDTO;
import command.care.clean.ItemCommand;
import command.care.clean.ItemOrderCommand;
import repository.care.RegistRepository;

@Service
public class ItemOrderService {
@Autowired
RegistRepository registRepository;

public void orderInsert(ItemOrderCommand itemOrderCommand, Model model) {

	CleanOrderDTO dto = new CleanOrderDTO();	
	
	dto.setEmployeeNo(itemOrderCommand.getEmployeeNo());
	Date orderDate = new Date(itemOrderCommand.getCleanorderDate().getTime());
	System.out.println("orderDate= " + orderDate);
	Date receiveDate = new Date(itemOrderCommand.getCleanorderReceiveDate().getTime());
	System.out.println("receiveDate= " + receiveDate);
	dto.setCleanorderDate(orderDate);
	dto.setCleanorderReceiveDate(receiveDate);

	dto.setCleanorderCompanyName(itemOrderCommand.getCleanorderCompanyName());
	dto.setCleanorderAddress(itemOrderCommand.getCleanorderAddress());
	dto.setCleanorderCompanyPh(itemOrderCommand.getCleanorderCompanyPh());
	dto.setCleanorderCompanyFax(itemOrderCommand.getCleanorderCompanyFax());
	dto.setCleanorderPostcode(itemOrderCommand.getCleanorderPostcode());
	dto.setCleanorderAddrdetail(itemOrderCommand.getCleanorderAddrdetail());
	dto.setAllsum(itemOrderCommand.getAllsum());

	
	
	
	
	dto.setMoveHow(itemOrderCommand.getMoveHow());
	dto.setMovePay(itemOrderCommand.getMovePay());


	registRepository.orderInsert(dto);
	
}

public void itemInsert(ItemCommand itemCommand) {
	CleanItemDTO dto1 = new CleanItemDTO();
	


	dto1.setCleanitemName(itemCommand.getCleanitemName());

	dto1.setCleanitemPrice( itemCommand.getCleanitemPrice());

	dto1.setCleanitemQty(itemCommand.getCleanitemQty());
	
	
	dto1.setCleanitemSumprice( itemCommand.getCleanitemSumprice());
	
	
	registRepository.itemInsert(dto1);
}
	
	
}
