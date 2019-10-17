//
//  ShareService+UI.swift
//  Loop
//
//  Copyright © 2018 LoopKit Authors. All rights reserved.
//

import LoopKitUI
import ShareClient


extension ShareService: ServiceAuthenticationUI {
    public var credentialFormFields: [ServiceCredential] {
        return [
            ServiceCredential(
                title: LocalizedString("Username", comment: "The title of the Dexcom share username credential"),
                isSecret: false,
                keyboardType: .asciiCapable
            ),
            ServiceCredential(
                title: LocalizedString("Password", comment: "The title of the Dexcom share password credential"),
                isSecret: true,
                keyboardType: .asciiCapable
            ),
            ServiceCredential(
                title: LocalizedString("Server", comment: "The title of the Dexcom share server URL credential"),
                isSecret: false,
                options: [
                    (title: LocalizedString("US", comment: "U.S. share server option title"),
                     value: KnownShareServers.US.rawValue),
                    (title: LocalizedString("Outside US", comment: "Outside US share server option title"),
                     value: KnownShareServers.NON_US.rawValue)
                    // remove the comment markers on lines 34 and 35 to use a custom share server
                    ,(title: LocalizedString("Custom", comment: "Custom share server option title"),
                     value: KnownShareServers.CUSTOM.rawValue)
                ]
            )
        ]
    }
}
