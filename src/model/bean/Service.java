package model.bean;

public class Service {
	private String IdService;
	private String IdOrganizer;
	private int NumberOfPeople;
	private String AreaHolding;
	private String NameService;
	private String DescriptionService;
	private String NameOrganizer;
	private String PhoneNumberOrganizer;
	public String getIdService() {
		return IdService;
	}
	public void setIdService(String idService) {
		IdService = idService;
	}
	public String getIdOrganizer() {
		return IdOrganizer;
	}
	public void setIdOrganizer(String idOrganizer) {
		IdOrganizer = idOrganizer;
	}
	public String getAreaHolding() {
		return AreaHolding;
	}
	public void setAreaHolding(String areaHolding) {
		AreaHolding = areaHolding;
	}
	public String getNameService() {
		return NameService;
	}
	public void setNameService(String nameService) {
		NameService = nameService;
	}
	public String getNameOrganizer() {
		return NameOrganizer;
	}
	public void setNameOrganizer(String nameOrganizer) {
		NameOrganizer = nameOrganizer;
	}
	public String getPhoneNumberOrganizer() {
		return PhoneNumberOrganizer;
	}
	public void setPhoneNumberOrganizer(String phoneNumberOrganizer) {
		PhoneNumberOrganizer = phoneNumberOrganizer;
	}
	public int getNumberOfPeople() {
		return NumberOfPeople;
	}
	public void setNumberOfPeople(int numberOfPeople) {
		NumberOfPeople = numberOfPeople;
	}
	public String getDescriptionService() {
		return DescriptionService;
	}
	public void setDescriptionService(String descriptionService) {
		DescriptionService = descriptionService;
	}
}
