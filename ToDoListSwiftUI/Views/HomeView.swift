//
//  HomeView.swift
//  ToDoListSwiftUI
//
//  Created by Philips on 22/10/25.
//

import SwiftUI

struct HomeView: View {
	
	@State private var tasks:[Task] = [
		Task(title: "Brush teeth", priority: .urgent),
		Task(title: "Bath", priority: .optional),
		Task(title: "Study", priority: .normal)
	]
	
    var body: some View {
		VStack {
			HStack {
				Spacer()
				Image(systemName: "plus")
					.font(.system(size: 20, weight: .medium))
			}
			HStack {
				Text("Tasks")
					.font(.largeTitle).fontWeight(.bold)
				Spacer()
			}
			ForEach(tasks) { task in
				TaskView(task: task)
				.padding(.horizontal, 15)
				.padding(.vertical, 13)
				.background(.white)
				.clipShape(RoundedRectangle(cornerRadius: 10))
			}
			Spacer()
		}
		.padding(.horizontal, 20)
		.background(Color.teal)
		
    }
}

#Preview {
	HomeView()
}
