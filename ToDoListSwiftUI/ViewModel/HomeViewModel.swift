//
//  HomeViewModel.swift
//  ToDoListSwiftUI
//
//  Created by Philips on 22/10/25.
//

import SwiftUI
import Combine

class HomeViewModel: ObservableObject {
	@Published var tasks: [Task] = []
	
	@Published var showNewTaskView: Bool = false
	
	func addTask(task: Task) {
		tasks.append(task)
	}
}
