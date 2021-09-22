//
//  SDKManager.swift
//  CustomFramework
//
//  Created by Wing Specialized Bank on 22/9/21.
//

import Foundation
import GoogleMaps

public class SDKManager {
    public init() {
        print("SDKManager initialized successfully.")
        
        GMSServices.provideAPIKey("AIzaSyAXWA_ULZODh6-JmPGqKtWMw81cJNpb_fg")
        print("GoogleMap API Key initailed successfully.")
    }
}
