package uk.ac.shu.webarch.eregister

class Instructor {

//creating the properties in the class
String name
String profession
Long instructorNumber

//set the classes the instructor is teaching
Set classesTaught

//Below is the relationship between this table and the other table
	static hasMany=[classesTaught:RegClass]
	static mappedBy=[classesTaught:'instructor']

    static constraints = {
    }
}
