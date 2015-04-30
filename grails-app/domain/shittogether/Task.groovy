package shittogether

class Task {

	String taskName
	Date creationDate
	Date dueDate
	Date finishDate
	Date visibleToUserDate
	
	EndUser taskAuthor
	EndUser taskCompleter
	EndUser taskWorker
	
	
	static belongsTo = [listOfTasks: ListOfTasks]
	
    static constraints = {
    }
}
