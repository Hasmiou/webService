package com.server.entities.interfaces;

import java.util.Date;

import com.server.entities.impl.Product;
import com.server.entities.impl.User;

public interface IComment {
	public String getContent();
	
	public void setContent(String content);
	
	public Date getCreateAt();
	
	public void setCreateAt(Date createAt); 
	
	public Product getProduct();
	
	public void setProduct(Product product);
	
	public User getUser();
	
	public void setUser(User user);
	
	public long getIdComment();
}
