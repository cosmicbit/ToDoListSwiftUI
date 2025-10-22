//
//  NewTaskViewModel.swift
//  ToDoListSwiftUI
//
//  Created by Philips on 22/10/25.
//

import Foundation
import SwiftUI
import Combine

class NewTaskViewModel: ObservableObject {
	
	@Published var taskTitle = ""
	@Published var selectedPriority = Priority.normal
	@Published var alertTitle = ""
	@Published var alertMessage = ""
	@Published var showAlert = false
	
	func modelTask() -> Task {
		return Task(title: taskTitle, priority: selectedPriority)
	}
	
	func validate() -> Bool {
		if taskTitle.count < 3 {
			alertTitle = "Title Required"
			alertMessage = "The Title should have more than 3 characters."
			showAlert = true
			return  false
		}
		
		return true
	}
}
