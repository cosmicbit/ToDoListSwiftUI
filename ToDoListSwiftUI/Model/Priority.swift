//
//  Priority.swift
//  ToDoListSwiftUI
//
//  Created by Philips on 22/10/25.
//

import Foundation
import SwiftUI

enum Priority: String, Hashable, CaseIterable, Identifiable {
	var id: Self { self }
	case urgent, normal, optional
}

extension Priority {
	var tagColor: Color {
		switch self {
		case .urgent:
			.red
		case .normal:
			.blue
		case .optional:
			.green
		}
	}
}
