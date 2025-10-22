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
	
	func modelTask() -> Task {
		return Task(title: taskTitle, priority: selectedPriority)
	}
}
