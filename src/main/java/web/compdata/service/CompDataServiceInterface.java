package web.compdata.service;

import java.util.Map;

import web.compdata.entity.CompData;

public interface CompDataServiceInterface {
	
	public abstract CompData login(String compAccount , String password);
	
	public abstract boolean changePassword(String compAccount , String oldpass , String newpass ,String confirm);
	
	public abstract boolean editPersonalProfile(CompData cd);
	
	public abstract CompData Register(CompData cd);

	public Map<String, String> getErrors();
}
