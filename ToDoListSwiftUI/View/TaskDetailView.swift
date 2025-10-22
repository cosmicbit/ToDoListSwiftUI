//
//  TaskDetailView.swift
//  ToDoListSwiftUI
//
//  Created by Philips on 22/10/25.
//

import SwiftUI

struct TaskDetailView: View {
	@Binding var task: Task
	@Environment(\.dismiss) var dismiss
	
    var body: some View {
		VStack(alignment: .leading) {
			HStack {
				Text(task.title)
					.font(.system(size: 26, weight: .bold))
				Spacer()
			}
			.padding(.bottom, 15)
			Button {
				task.isComplete.toggle()
				dismiss()
			} label: {
				Text(task.isComplete ? "Mark Not Done" : "Mark Done")
					.font(.system(size: 15, weight: .semibold))
					.foregroundStyle(.white)
					.frame(height: 40)
					.frame(maxWidth: .infinity)
					.background(.green)
					.clipShape(RoundedRectangle(cornerRadius: 6))
				
			}
			Spacer()
		}
		.padding(.horizontal)
    }
}

#Preview {
	TaskDetailView(task: .constant(Task(title: "Task", priority: .normal)))
}
