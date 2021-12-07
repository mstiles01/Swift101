//
//  AuthManager.swift
//  Spotify
//
//  Created by Michael Stiles on 12/5/21.
//

import Foundation

final class AuthManager {
    
    static let shared = AuthManager()
    
    struct Constant {
        static let clientID = "8433c661320a4b1dae42d0c04248812f"
        static let clientSecret = "60b5a0286ee8488589c2619f72afddbb"
    }
    
    private func int() {}
    
    public var SignInURL: URL? {
        let base = "https://accounts.spotify.com/authorize"
        let scopes = "user-read-private"
        let redirectURI = "https://evahealth.com"
        let string = "\(base)?response_type=code&client_id=\(Constant.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var expirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(
        code: String,
        completion:@escaping ((Bool) -> Void)
    ) {
        //GET TOKEN
    }
    
    public func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
        
    }
    
}
