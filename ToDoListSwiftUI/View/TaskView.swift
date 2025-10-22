//
//  TaskView.swift
//  ToDoListSwiftUI
//
//  Created by Philips on 22/10/25.
//
import Foundation
import SwiftUI

struct TaskView: View {
	let task: Task
	var body: some View {
		HStack {
			Image(systemName: task.isComplete ? "checkmark.circle" : "circle")
				.font(.system(size: 16))
				.foregroundStyle(.black)
			
			Text(task.title)
				.font(.system(size: 16))
				.foregroundStyle(.black)
			Spacer()
			Text(task.priority.rawValue.capitalized)
				.font(.system(size: 15, weight: .bold))
				.foregroundStyle(task.priority.tagColor)
				.padding(.horizontal, 12)
				.padding(.vertical, 5)
				.background(Capsule().fill(task.priority.tagColor.opacity(0.4)))
		}
	}
}
