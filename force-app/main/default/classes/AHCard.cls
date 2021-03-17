public class AHCard {

	public String pack_code;
	public String pack_name;
	public String type_code;
	public String type_name;
	public String faction_code;
	public String faction_name;
	public Integer position;
	public Boolean exceptional;
	public Boolean myriad;
	public String code;
	public String name;
	public String real_name;
	public String subname;
    public Integer cost;
	public String text;
	public String real_text;
	public Integer quantity;
	public Integer skill_willpower;
	public Integer skill_intellect;
	public Integer skill_combat;
	public Integer skill_agility;
	public Integer skill_wild;
    public Integer xp;
	public Boolean clues_fixed;
	public Integer health;
	public Boolean health_per_investigator;
	public Integer sanity;
	public Integer deck_limit;
	public String real_slot;
	public String traits;
	public String real_traits;
	public String flavor;
	public String illustrator;
	public Boolean is_unique;
	public Boolean exile;
	public Boolean hidden;
	public Boolean permanent;
	public Boolean double_sided;
	public String back_text;
	public String back_flavor;
	public String url;
	public String imagesrc;
	public String backimagesrc;

	
	public static AHCard parse(String json) {
		return (AHCard) System.JSON.deserialize(json, AHCard.class);
	}
}