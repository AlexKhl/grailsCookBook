package grailscookbook

class Recipe {
    String name;
    String formula;
    String ingredients;
    Date date;

    static constraints = {
        name(nullable: false, unique: true)
        formula(nullable: false)
        ingredients(nullable: false)
    }

    static mapping = {
        name type: "text"
        formula type: "text"
        ingredients type: "text"
        date type: "date"
    }
}
