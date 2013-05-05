package uk.ac.shu.webarch.eregister

class Instructor {
String name
String profession
Long instructorNumber

Set classesTaught


	static hasMany=[classesTaught:RegClass]
	static mappedBy=[classesTaught:'instructor']

    static constraints = {
    }
}
