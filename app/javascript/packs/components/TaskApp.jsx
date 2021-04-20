import React from 'react'
import ReactDom from 'react-dom'
import axios from 'axios'
import TaskItems from './TaskItems'
import TaskItem from './TaskItem'
class TaskApp extends React.Component {
    constructor(props) {
        super(props);
        this.state = { 
            taskItems: []
         }
         this.getTaskItems = this.getTaskItems.bind(this)
    }
    componentDidMount(){
        this.getTaskItems();
    }   
    getTaskItems() {
        axios
        .get("/api/v1/tasks")
        .then(response => {
            const taskItems = response.data;
            this.setState({ taskItems });
        })
        .catch(error => {
            console.log(error);
        })
    }
    render() { 
        return (
            <div>
                <h1 className="text-center jumbotron-fluid display-1 text-info">My Task</h1>
                <hr/>
                <TaskItems>
                    {this.state.taskItems.map(taskItem => (
                        <TaskItem key={taskItem.id} taskItem={taskItem} />
                    ))}
                </TaskItems>
            </div>
        );
    }
}
 
document.addEventListener('turbolinks:load', () => {
    const app = document.getElementById('task-app')
    app && ReactDom.render(<TaskApp />, app)
})