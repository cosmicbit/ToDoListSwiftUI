//
//  View+Extension.swift
//  ToDoListSwiftUI
//
//  Created by Philips on 22/10/25.
//

import Foundation
import SwiftUI

extension View {
	@ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
		if condition {
			transform(self)
		} else {
			self
		}
	}
}

