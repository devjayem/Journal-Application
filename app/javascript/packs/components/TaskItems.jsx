import React from 'react'

class TaskItems extends React.Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }
    render() { 
        return (
            <div className="table-responsive">
                <table className="table">
                    <thead>
                        <tr>
                            <th scope="col">Status</th>
                            <th scope="col" className="text-center">Task</th>
                            <th scope="col" className="text-center">Deadline</th>
                            <th scope="col" className="text-center">
                                Action
                            </th>                            
                        </tr>
                    </thead>
                    <tbody>{this.props.children}</tbody>
                </table>
            </div>
        );
    }
}
 
export default TaskItems