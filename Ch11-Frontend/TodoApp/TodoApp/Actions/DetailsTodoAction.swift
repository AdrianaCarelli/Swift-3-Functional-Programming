//
//  DetailsTodoAction.swift
//  TodoApp
//
//  Created by Fatih Nayebi on 2016-04-29.
//  Copyright © 2016 Fatih Nayebi. All rights reserved.
//

import Delta

struct DetailsTodoAction: ActionType {
    let todo: Todo
    
    func reduce(state: State) -> State {
        state.todos.value = state.todos.value.map { todo in
            guard todo == self.todo else {
                return Todo(id: todo.id, name: todo.name, description: todo.description, notes: todo.notes, completed: todo.completed, synced: todo.synced, selected: false)
            }
            return Todo(id: self.todo.id, name: self.todo.name, description: self.todo.description, notes: self.todo.notes, completed: self.todo.completed, synced: self.todo.synced, selected: true)
        }
        
        return state
    }
}
