package day08;

import java.util.ArrayList;

public class Handler {
	private ArrayList<Member> list = new ArrayList<Member>();
		
	public Handler() {
		setDummy();

	}

	public void setDummy() {
		list.add(new Member("ap9407","1234"));
		list.add(new Member("wldyd8808", "5678"));
	}

	public ArrayList<Member> getList() {
		return list;
	}
	
	public boolean login(Member user) {
		boolean flag = false;
		for(Member m : list) {
			if(m.getUserid().equals(user.getUserid())) {
				if(m.getUserpw().equals(user.getUserpw())) {
					flag = true;
					break;
				}
			}
		}
		return flag;
	}
	
	
}
