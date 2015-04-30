package shittogether



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ListOfTasksController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ListOfTasks.list(params), model:[listOfTasksInstanceCount: ListOfTasks.count()]
    }

    def show(ListOfTasks listOfTasksInstance) {
        respond listOfTasksInstance
    }

    def create() {
        respond new ListOfTasks(params)
    }

    @Transactional
    def save(ListOfTasks listOfTasksInstance) {
        if (listOfTasksInstance == null) {
            notFound()
            return
        }

        if (listOfTasksInstance.hasErrors()) {
            respond listOfTasksInstance.errors, view:'create'
            return
        }

        listOfTasksInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'listOfTasks.label', default: 'ListOfTasks'), listOfTasksInstance.id])
                redirect listOfTasksInstance
            }
            '*' { respond listOfTasksInstance, [status: CREATED] }
        }
    }

    def edit(ListOfTasks listOfTasksInstance) {
        respond listOfTasksInstance
    }

    @Transactional
    def update(ListOfTasks listOfTasksInstance) {
        if (listOfTasksInstance == null) {
            notFound()
            return
        }

        if (listOfTasksInstance.hasErrors()) {
            respond listOfTasksInstance.errors, view:'edit'
            return
        }

        listOfTasksInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ListOfTasks.label', default: 'ListOfTasks'), listOfTasksInstance.id])
                redirect listOfTasksInstance
            }
            '*'{ respond listOfTasksInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ListOfTasks listOfTasksInstance) {

        if (listOfTasksInstance == null) {
            notFound()
            return
        }

        listOfTasksInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ListOfTasks.label', default: 'ListOfTasks'), listOfTasksInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'listOfTasks.label', default: 'ListOfTasks'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
