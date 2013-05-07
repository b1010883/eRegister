package uk.ac.shu.webarch.eregister

class Course {
//creating the properties in the class
String name
String courseCode

//the classes this course is teaching
Set courseClasses

//Below is the relationship between this table and the other table
	static hasMany=[courseClasses: RegClass]
	static mappedBy=[courseClasses: 'course']

    static constraints = {
    }
}
