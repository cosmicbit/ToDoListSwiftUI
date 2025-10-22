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
	
	fileprivate var iOSLayout: some View {
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

	fileprivate var macLayout: some View {
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
			.buttonStyle(.plain)
			Spacer()
		}
		.padding(.horizontal)
	}
	
    var body: some View {
		#if os(iOS)
			iOSLayout
		#elseif os(macOS)
			macLayout
		#endif
    }
}

#Preview {
	TaskDetailView(task: .constant(Task(title: "Task", priority: .normal)))
}
