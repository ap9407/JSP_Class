package day09;

import java.util.ArrayList;

public class Handler {
	ArrayList<Member> list = new ArrayList<Member>();
	
	public Handler() {
		setDummy();
	}
	
	public void setDummy() {
		list.add(new Member("ap9407", "1111"));
		list.add(new Member("wldyd8808", "2222"));
	}

	public ArrayList<Member> getList() {
		return list;
	}
	
	public Member login(Member user) {
		Member login = null;
		for(Member m : list) {
			if(m.getUserid().equals(user.getUserid())) {
				if(m.getUserpw().equals(user.getUserpw())) {
					login = m;
					break;
				}
			}
			
		}
		return login;
		
	}
	
}
