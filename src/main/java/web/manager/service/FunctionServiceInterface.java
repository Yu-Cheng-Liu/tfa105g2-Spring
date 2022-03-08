package web.manager.service;

import java.util.List;

import web.manager.entity.FunctionBean;

public interface FunctionServiceInterface {
	public abstract List<FunctionBean> selectAll();
	
	public abstract boolean delete(FunctionBean bean);

	public abstract FunctionBean insert(FunctionBean bean);

}