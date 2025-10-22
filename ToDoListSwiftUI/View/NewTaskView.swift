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
		VStack(alignment: .leading) {
			Text("Task Title")
				.font(.system(size: 15, weight: .semibold))
				.padding(.top, 30)
			TextField("Task Title", text: $viewModel.taskTitle)
				.font(.system(size: 15))
				.textFieldStyle(.roundedBorder)
				.padding(.bottom)
			
			Text("Priority")
				.font(.system(size: 15, weight: .semibold))
			Picker("Priority", selection: $viewModel.selectedPriority) {
				ForEach(Priority.allCases) { currentPriority in
					Text(currentPriority.rawValue.capitalized)
						.tag(currentPriority)
					
				}
			}
			.padding(.bottom)
			
			Button {
				if viewModel.validate() {
					onSave(viewModel.modelTask())
					dismiss()
				}
			} label: {
				Text("Add Task")
					.font(.system(size: 15, weight: .semibold))
					.foregroundStyle(.white)
					.frame(maxWidth: .infinity)
					.frame(height: 40)
					.background(.green)
					.clipShape(RoundedRectangle(cornerRadius: 6))
			}
			Spacer()
		}
		.padding(.horizontal)
		.alert(viewModel.alertTitle, isPresented: $viewModel.showAlert) { } message: {
			Text(viewModel.alertMessage)
		}
    }
}

#Preview {
	NewTaskView { _ in }
}
