//
//  Extensions.swift
//  GoodDrama
//
//  Created by ljw on 2016. 10. 28..
//  Copyright © 2016년 ljw. All rights reserved.
//

import Foundation

extension String {

	func base64Encoded() -> String {
		guard let plainData = data(using: .utf8) else {
			fatalError("Failed to Encoding String")
		}


		let base64String = plainData.base64EncodedString(options: [])

		return base64String
	}

	func base64Decoded() -> String? {

		if let decodedData = Data(base64Encoded: self, options: []),
		let decodedString = String(data: decodedData, encoding: .utf8) {
			return decodedString as String
			} else {
				//            fatalError("Failed to Decoding String")
				return nil
			}
		}
	}


