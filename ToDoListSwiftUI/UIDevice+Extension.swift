//
//  UIDevice+Extension.swift
//  ToDoListSwiftUI
//
//  Created by Philips on 22/10/25.
//

import Foundation
import SwiftUI

#if os(iOS)
extension UIDevice {
	static var isIPad: Bool {
		UIDevice.current.userInterfaceIdiom == .pad
	}
	
	static var isIPhone: Bool {
		UIDevice.current.userInterfaceIdiom == .phone
	}
}
#endif
