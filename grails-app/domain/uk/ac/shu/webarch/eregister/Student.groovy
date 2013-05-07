package uk.ac.shu.webarch.eregister

class Student {
String studentNumber
String studentName
String studentAddress
String studentTelephone


Set studentRegister
Set enrolled


	static hasMany=[studentRegister:RegisterEntry, enrolled:Enrollment ]
	static mappedBy=[studentRegister:'student', enrolled:'student']


    static constraints = {
    }
}
