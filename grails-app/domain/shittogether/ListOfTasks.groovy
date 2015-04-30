package shittogether

import java.util.Date;

class ListOfTasks {
	
	String listName
	Date creationDate
	Date dueDate
	Date finishDate
	Date visibleToUserDate
	
	static hasMany = [tasks:Task]

    static constraints = {
    }
}
