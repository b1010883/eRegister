package uk.ac.shu.webarch.eregister

class Student {
String studentNumber
String studentName
String studentAddress
String studentTelephone

Enrollment enrollment

Set studentRegister
Set enrolled


	static hasMany=[studentRegister:RegisterEntry, enrolled:Enrollment ]
	static mappedBy=[studentRegister:'student', enrolled:'student']


    static constraints = {
    }
}
