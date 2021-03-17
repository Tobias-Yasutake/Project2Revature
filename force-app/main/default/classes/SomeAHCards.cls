public class SomeAHCards {

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
	public String text;
	public String real_text;
	public Integer quantity;
	public Integer skill_willpower;
	public Integer skill_intellect;
	public Integer skill_combat;
	public Integer skill_agility;
    public Integer skill_wild;
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
	public Integer cost;
	public String slot;
	public String subtype_code;
	public String subtype_name;
	public Integer xp;
	public Integer enemy_damage;
	public Integer enemy_horror;
	public Integer enemy_fight;
	public Integer enemy_evade;
	public String encounter_code;
	public String encounter_name;
	public Integer encounter_position;
	public Integer spoiler;
	public Integer doom;
	public Integer stage;
	public String back_name;
	public Integer clues;
	public Integer shroud;
	public Integer victory;

	public class Linked_card {
		public String pack_code;
		public String pack_name;
		public String type_code;
		public String type_name;
		public String faction_code;
		public String faction_name;
		public String encounter_code;
		public String encounter_name;
		public Integer id;
		public Integer position;
		public Boolean exceptional;
		public Boolean myriad;
		public Integer encounter_position;
		public String code;
		public String name;
		public String real_name;
		public String subname;
		public Object bonded_to;
		public Object bonded_count;
		public Object cost;
		public String text;
		public String real_text;
		public Integer quantity;
		public Object skill_willpower;
		public Object skill_intellect;
		public Object skill_combat;
		public Object skill_agility;
		public Object skill_wild;
		public Object xp;
		public Object shroud;
		public Object clues;
		public Boolean clues_fixed;
		public Object doom;
		public Integer health;
		public Boolean health_per_investigator;
		public Object sanity;
		public Integer enemy_damage;
		public Integer enemy_horror;
		public Integer enemy_fight;
		public Integer enemy_evade;
		public Integer victory;
		public Object vengeance;
		public Object deck_limit;
		public Object slot;
		public String real_slot;
		public Object stage;
		public String traits;
		public String real_traits;
		public Object deck_requirements;
		public Object deck_options;
		public Object restrictions;
		public String flavor;
		public String illustrator;
		public Boolean is_unique;
		public Boolean exile;
		public Boolean hidden;
		public Boolean permanent;
		public Boolean double_sided;
		public Object back_text;
		public Object back_flavor;
		public Object back_name;
		public String octgn_id;
		public String url;
		public String imagesrc;
		public Integer spoiler;
	

    
    }
	
	public static List<AHCard> parse(String json) {
		return (List<AHCard>) System.JSON.deserialize(json, List<AHCard>.class);
	}
    
}