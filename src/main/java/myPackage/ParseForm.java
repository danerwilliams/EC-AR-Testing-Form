
package myPackage;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.util.Scanner;


public class ParseForm{
	private String stringText;
    private String nameF;
    private String nameL;
    private String course;
    private String teacher;
    private String accoms;
    private String teacherEmail;
    private int period;
    private String date;
    private String studentEmail;

    public ParseForm(String s){
        this.setFormVars(s);
        this.setTeacherEmail(teacher);
        this.setStudentEmail();
    }
    public ParseForm() {
    }

    
    
    public void setFormVars(String s){
        this.setStringText(s);
        Scanner sc = new Scanner(stringText);
        nameF = sc.nextLine();
        nameL = sc.nextLine();
        course = sc.nextLine();
        teacher = sc.nextLine();
        period = Integer.parseInt(sc.nextLine());
        accoms = sc.nextLine();
        date = sc.nextLine();
    }


    public void setStringText(String s) {
        stringText = s;
        System.out.println("setStringText value:");
        System.out.println(stringText);
    }

    public void setTeacherEmail(String s) {
        Scanner sc = new Scanner(s);
        char firstInitial = s.charAt(0);
        String str = sc.next();
        String lastName = sc.next();
        teacherEmail = String.format("%c%s@eastsidecatholic.org", Character.valueOf(firstInitial), lastName);
    }

    public void setStudentEmail() {
        studentEmail = String.valueOf(nameF) + "." + nameL + "@eastsidecatholicschool.org";
    }

    public String getInfo() {
        return String.valueOf(nameF) + "\n" + nameL + "\n" + course + "\n" + teacher + "\n" + period + "\n" + accoms + "\n" + date;
    }

    public String getNameF() {
        return nameF;
    }

    public String getNameL() {
        return nameL;
    }

    public String getCourse() {
        return course;
    }

    public String getTeacher() {
        return teacher;
    }

    public String getAccoms() {
        return accoms;
    }

    public String getTeacherEmail() {
        return teacherEmail;
    }

    public int getPeriod() {
        return period;
    }

    public String getDate() {
        return date;
    }

    public String getStudentEmail() {
        return studentEmail;
    }

    public String getMessage() {
        String m = "Hello,<br><br> " + nameF + " " + nameL + " has requested to take their " + course + " test with accommodations" + " during period " + period + " on " + date + "." + "<br><br> Your student is requesting to use the following accomodations: <br>" + accoms + "<br><br> Once confirmed, this test will automatically be updated to your Outlook calendar.";
        return m;
    }

    public String getSubject() {
        String s = String.valueOf(nameF) + " " + nameL + ", " + teacher + ", " + "P" + period + ", " + course;
        return s;
    }

    public String reformatDate() {
        return date;
    }

    public String getStartTime() {
        String t = "T00:00:00";
        if (period == 1) {
            t = "T07:50:00";
        }
        if (period == 2) {
            t = "T08:55:00";
        }
        if (period == 3) {
            t = "T09:50:00";
        }
        if (period == 4) {
            t = "T10:45:00";
        }
        if (period == 5) {
            t = "T12:10:00";
        }
        if (period == 6) {
            t = "T13:05:00";
        }
        if (period == 7) {
            t = "T14:00:00";
        }
        return t;
    }

    public String getEndTime() {
        String t = "T00:00:00";
        if (period == 1) {
            t = "T08:40:00";
        }
        if (period == 2) {
            t = "T09:45:00";
        }
        if (period == 3) {
            t = "T10:40:00";
        }
        if (period == 4) {
            t = "T12:05:00";
        }
        if (period == 5) {
            t = "T13:00:00";
        }
        if (period == 6) {
            t = "T13:55:00";
        }
        if (period == 7) {
            t = "T14:50:00";
        }
        return t;
    }
}
