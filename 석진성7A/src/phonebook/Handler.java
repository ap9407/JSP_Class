package phonebook;

import java.util.ArrayList;

public class Handler {
	private ArrayList<Phonebook> list = new ArrayList<Phonebook>();
	private int idx = 0;

	private int nextIdx() {
		return ++idx;
	}

	public Handler() {
		if (list.isEmpty()) {
			list.add(new Phonebook(nextIdx(), "석진성", "01064392882"));
			list.add(new Phonebook(nextIdx(), "김지원", "01012345678"));
			list.add(new Phonebook(nextIdx(), "엄마", "01011112222"));
			list.add(new Phonebook(nextIdx(), "아빠", "01033334444"));

		}
	}

	public ArrayList<Phonebook> getList() {
		return list;
	}

	public String insert(Phonebook ob) {
		ob.setIdx(nextIdx());
		list.add(ob);
		return "추가되었습니다";
	}

	public int delete(int idx) {
		boolean flag = list.removeIf(phonebook -> phonebook.getIdx() == idx);
		return flag ? 1 : 0;
	}

	public Phonebook getItem(int idx) {
		Phonebook item = null;
		for (Phonebook p : list) {
			if (p.getIdx() == idx) {
				item = p;
				break;
			}
		}
		return item;

	}
	public int modify(Phonebook p) {
		int index = -1;
		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).getIdx() == p.getIdx()) {
				index = i;
				break;
			}
		}
		list.set(index, p);
		return index;
	}

}
