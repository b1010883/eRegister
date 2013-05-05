package uk.ac.shu.webarch.eregister

class Course {
String name
String courseCode
Long courseNumber
Date startDate

Set courseClasses

	static hasMany=[courseClasses:RegClass]
	static mappedBy=[courseClasses:'course']

    static constraints = {
    }
}
