package src.main.java.com.iot.sp.user.service;

import java.util.List;
import java.util.Map;

import src.main.java.com.iot.sp.user.dto.UserInfo;

public interface UserService {
	public UserInfo getUser(UserInfo pUser);
	public List<UserInfo> getUserList(Map hm);
}
