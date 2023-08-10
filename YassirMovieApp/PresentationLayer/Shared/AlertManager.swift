//
//  AlertManager.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import SwiftUI

class AlertManager: ObservableObject {
    
    @Published var alert: AlertData?
    
    struct AlertData {
        var title: String
        var message: String
        var primaryButton: Alert.Button?
        var secondaryButton: Alert.Button?
    }
    
    func showAlert(title: String, message: String, primaryButton: Alert.Button? = nil, secondaryButton: Alert.Button? = nil) {
        alert = AlertData(title: title, message: message, primaryButton: primaryButton, secondaryButton: secondaryButton)
    }
    
    func dismissAlert() {
        alert = nil
    }
}
