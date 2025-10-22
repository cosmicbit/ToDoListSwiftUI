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
			Image(systemName: "checkmark.circle")
			
				.font(.system(size: 18, weight: .medium))
				.foregroundStyle(.black)
			
			Text(task.title)
				.font(.system(size: 18, weight: .medium))
				.foregroundStyle(.black)
			Spacer()
			VStack {
				Text(task.priority.rawValue.capitalized)
					.font(.system(size: 16, weight: .semibold))
					.foregroundStyle(task.priority.tagColor)
					.padding(.horizontal, 10)
					.padding(.vertical, 5)
			}
			.background(task.priority.tagColor.opacity(0.3))
			.clipShape(.capsule)
			
		}
	}
}
