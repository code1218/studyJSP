package myHome;

import java.util.ArrayList;

public class LoginData {
	ArrayList<UserData> user = new ArrayList<UserData>();
	private static LoginData login = new LoginData();

	private LoginData() {
		UserData ud = new UserData();
		ud.setId("junil");
		ud.setPwd("1234");
		ud.setName("김준일");
		user.add(ud);
	}
	
	public static LoginData getLoginData() {
		if(login == null) {
			login = new LoginData();
		}
		return login;
	}
	
	public UserData getUser(){
		return user.get(0);
	}
}
