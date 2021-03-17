public class AHPack {

	public String name;
	public String code;
	public Integer position;
	public Integer cycle_position;
	public String available;
	public Integer known;
	public Integer total;
	public String url;
	public Integer id;

	
	public static List<AHPack> parse(String json) {
		return (List<AHPack>) System.JSON.deserialize(json, List<AHPack>.class);
	}
}