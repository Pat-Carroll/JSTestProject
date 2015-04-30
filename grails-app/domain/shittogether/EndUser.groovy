package shittogether

class EndUser {
	
	String fullName
	String userName
	String password
	Date birthday
	String email
	String toString() {"${fullName}"}
	
	
	//TODO starting off with users only having control over tasks they create.  Tasks cannot be shared.
	// This should change when I know what I am doing.
	static hasMany = [activeTasks: Task, createdTasks: Task, finishedTasks: Task]
	static mappedBy = [activeTasks: "taskWorker", createdTasks: "taskAuthor", finishedTasks: "taskCompleter"]
	//static hasMany = [lists; List]
	
	
	
	

    static constraints = {
		userName (blank:false, nullable:false)
		password( blank:false, password:true)
		email(email:true,  blank:false)
		
    }
}
