//
//  HomeView.swift
//  ToDoListSwiftUI
//
//  Created by Philips on 22/10/25.
//

import SwiftUI

struct HomeView: View {
	
	@StateObject private var viewModel = HomeViewModel()
	
    var body: some View {
		NavigationStack {
			VStack {
				List {
					ForEach($viewModel.tasks) { $task in
						Button {
							task.isComplete.toggle()
						} label: {
							TaskView(task: task)
						}
					}
					.onDelete(perform: delete)
				}
				.scrollContentBackground(.hidden)
				
				Spacer()
			}
			.navigationTitle("Tasks")
			.sheet(isPresented: $viewModel.showNewTaskView) {
				NewTaskView(onSave: viewModel.addTask)
			}
			.toolbar {
				ToolbarItem(placement: .topBarTrailing) {
					Button {
						viewModel.showNewTaskView = true
					} label: {
						Image(systemName: "plus")
							.foregroundStyle(.black)
					}
				}
			}
		}
		
    }
	
	private func delete(at offset: IndexSet) {
		viewModel.tasks.remove(atOffsets: offset)
	}
}

#Preview {
	HomeView()
}
