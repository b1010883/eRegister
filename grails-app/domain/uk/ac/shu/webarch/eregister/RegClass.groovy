package uk.ac.shu.webarch.eregister

class RegClass {
Long classNumber
String className
String location

Instructor instructor
Course course

Set classRegister
Set enrolled

	static hasMany=[classRegister:RegistrationSheet, enrolled:Enrollment]
	static mappedBy=[classRegister:'regClass', enrolled:regClass]

    static constraints = {
    }
}
