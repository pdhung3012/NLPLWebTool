package utils;
import org.apache.commons.lang.StringEscapeUtils;

public class EncodeDecodeUtil {

	public static String encode(String input){
		String results = StringEscapeUtils.escapeHtml(input);
		return results;
	}

	public static String decode(String input){
		String results = StringEscapeUtils.unescapeHtml(input);
		return results;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
