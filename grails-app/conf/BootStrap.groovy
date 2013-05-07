import uk.ac.shu.webarch.eregister.*;

class BootStrap {

    def init = { servletContext ->

// Code to show progress of the app
    println("Bootstrap::init");

// defining variables and putting test data into tables

def ian_instructor = Instructor.findByInstructorNumber(646345) ?: new Instructor
(instructorNumber: 646345, 
name: 'Ian Robbertson', 
profession: 'Computing').save();

def mathew_instructor = Instructor.findByInstructorNumber(121212) ?: new Instructor
(instructorNumber: 121212, 
name: 'Mathew Love', 
profession: 'Multimedia').save();

def chris_student = Student.findByStudentNumber(212121) ?: new Student
(studentNumber: 212121, 
studentName: 'Chris Bracewell',  
studentTelephone: '07890383904', 
studentAddress: 'Some place').save(failOnError:true);

def web_arch_course = Course.findByCourseCode(121212) ?: new Course
(courseCode: 121212, 
name: 'Computing').save();


    }
    def destroy = {
    }

}	
