package Validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.stay.furniture.FurnitureCommand;


public class furnitureCommandValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return FurnitureCommand.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		/*
		 * ValidationUtils.rejectIfEmpty(errors, "furnitureNo", "필수입력 항목입니다");
		 * ValidationUtils.rejectIfEmpty(errors, "rentalFee", "필수입력 항목입니다");
		 * ValidationUtils.rejectIfEmpty(errors, "furnitureName", "필수입력 항목입니다");
		 * ValidationUtils.rejectIfEmpty(errors, "furnitureContent", "필수입력 항목입니다");
		 */
	}

}
