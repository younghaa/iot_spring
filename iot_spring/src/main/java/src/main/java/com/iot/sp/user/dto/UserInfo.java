package src.main.java.com.iot.sp.user.dto;

import org.springframework.stereotype.Component;
@Component
public class UserInfo {
	
	private String userId;
	private String userPwd;
	private String userName;
	private String age;
	private String address;
	private String hp1;
	private String hp2;
	private String hp3;
	private int userNum;
	private int departNum;
	private String userRoleLevel;
	private String gender;
	
	public int getDepartNum() {
		return departNum;
	}
	public void setDepartNum(int departNum) {
		this.departNum = departNum;
	}
	public String getUserRoleLevel() {
		return userRoleLevel;
	}
	public void setUserRoleLevel(String userRoleLevel) {
		this.userRoleLevel = userRoleLevel;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHp1() {
		return hp1;
	}
	public void setHp1(String hp1) {
		this.hp1 = hp1;
	}
	public String getHp2() {
		return hp2;
	}
	public void setHp2(String hp2) {
		this.hp2 = hp2;
	}
	public String getHp3() {
		return hp3;
	}
	public void setHp3(String hp3) {
		this.hp3 = hp3;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
}
