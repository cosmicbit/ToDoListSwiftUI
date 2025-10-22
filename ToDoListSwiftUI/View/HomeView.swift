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
		ZStack {
			VStack {
				HStack {
					Spacer()
					Button {
						viewModel.showNewTaskView = true
					} label: {
						Image(systemName: "plus")
							.font(.system(size: 20, weight: .medium))
							.foregroundStyle(.black)
					}
				}
				.padding(.horizontal, 20)
				HStack {
					Text("Tasks")
						.font(.largeTitle).fontWeight(.bold)
					Spacer()
				}
				.padding(.horizontal, 20)

				List {
					ForEach(viewModel.tasks) { task in
						TaskView(task: task)
					}
					.onDelete(perform: delete)
				}
				.scrollContentBackground(.hidden)
				
				Spacer()
			}
			
		}
		.background(.black.opacity(0.1))
		.sheet(isPresented: $viewModel.showNewTaskView) {
			NewTaskView(onSave: viewModel.addTask)
		}
    }
	
	private func delete(at offset: IndexSet) {
		viewModel.tasks.remove(atOffsets: offset)
	}
}

#Preview {
	HomeView()
}
