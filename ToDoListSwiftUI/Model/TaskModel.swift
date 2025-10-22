//
//  File.swift
//  ToDoListSwiftUI
//
//  Created by Philips on 22/10/25.
//

import Foundation

struct Task: Identifiable {
	let id = UUID()
	let title: String
	let priority: Priority
}
