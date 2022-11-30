package day06;

import java.util.Random;

public class UPDN {
	Random ran = new Random();
	private int cpu= ran.nextInt(100)+1;
	private int cnt;

	public String getResult(int cpu, int human) {
		cnt++;
		String result = "";
		if (cpu < human) {
			result = "DOWN";
		} else if (cpu > human) {
			result = "UP";
		} else {
			result = "정답입니다";
		}
		return result;
	}
	public int getCpu() {
		return cpu;
	}

	public void setCpu(int cpu) {
		this.cpu = cpu;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

}
