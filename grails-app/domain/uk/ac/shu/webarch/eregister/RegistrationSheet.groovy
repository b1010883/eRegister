package uk.ac.shu.webarch.eregister

class RegistrationSheet {
Long studentNum
String studentName
String attended
RegClass regClass

Set registerStudent


	static hasMany=[registerStudent:RegisterEntry]
	static mappedBy=[registerStudent:'registrationSheet']

    static constraints = {
    }
}
