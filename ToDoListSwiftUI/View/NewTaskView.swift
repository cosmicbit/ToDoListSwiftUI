//
//  NewTaskView.swift
//  ToDoListSwiftUI
//
//  Created by Philips on 22/10/25.
//

import SwiftUI

struct NewTaskView: View {
	@Environment(\.dismiss) var dismiss
	@StateObject private var viewModel = NewTaskViewModel()
	
	var onSave: (Task) -> Void
	
    var body: some View {
		VStack(spacing: 20) {
			VStack(alignment: .leading) {
				HStack {
					Text("Task Title")
						.font(.system(size: 20, weight: .bold))
				}
				TextField("Task Title", text: $viewModel.taskTitle)
					.frame(height: 40)
					.border(.gray.opacity(0.1))
					.padding(.horizontal, 5)
				
			}
			
			VStack(alignment: .leading) {
				HStack {
					Text("Priority")
						.font(.system(size: 20, weight: .bold))
					Spacer()
				}
				
				Picker("", selection: $viewModel.selectedPriority) {
					ForEach(Priority.allCases, id: \.hashValue) { currentPriority in
						Text(currentPriority.rawValue.capitalized)
							.tag(currentPriority)
							.padding()
						
					}
				}
			}
			
			Button {
				onSave(viewModel.modelTask())
				dismiss()
			} label: {
				Text("Add Task")
					.font(.system(size: 16, weight: .medium))
					.frame(maxWidth: .infinity)
					.frame(height: 40)
					.background(.green)
					.foregroundStyle(.white)
					.clipShape(RoundedRectangle(cornerRadius: 10))
			}
		}
		.padding(.top, 50)
		.padding(.horizontal, 20)
		Spacer()
    }
}

#Preview {
	NewTaskView { _ in }
}
