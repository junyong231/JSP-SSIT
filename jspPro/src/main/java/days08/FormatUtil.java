package days08;

import java.text.DecimalFormat;

public class FormatUtil {

	//인스턴스 메서드 (객체 생성해야 사용 가능)
	public String number(long price, String pattern) {
		DecimalFormat df = new DecimalFormat(pattern);
		return df.format(price); 
	}
	
	// 객체 생성 안해도 가능
	static public String staticNumber(long price, String pattern) {
		DecimalFormat df = new DecimalFormat(pattern);
		return df.format(price);
	}
	
}
