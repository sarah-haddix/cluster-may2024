//
//  ExampleNetworkRequest.swift
//  cluster-may2024
//
//  Created by Sarah Haddix on 5/18/24.
//

import Foundation

// MARK - ApprenticeshipService.swift

struct ApprenticeshipService {
    /// Used to connect to the internet via HTTPS
    // Singleton instance of URLSession - default configurations good for most basic applications
    private let session = URLSession.shared

    /// Used to decode the data we receive from `JSON`
    private let decoder = JSONDecoder()

    /// Fetch the name of a random iOS Apprenticeship member from `learning.appteamcarolina.com`
    /// - Returns: A string containing an apprentice's name.
    // Async - must await return of function in asycncronous context
    // throws an error
    public func fetchSingleApprentice() async throws -> String {
        // Build the URL we'll make a request to
        // URLComponents in Swift Foundation, used for working with URLS, passing string to initialize a URL
        // if string is a well-formatted URL, that what components will be. If not, components will be nil
        let components = URLComponents(string: "https://learning.appteamcarolina.com/networking-demo/apprentice")
        // unwrapping components into url
        guard let url = components?.url else { fatalError("Invalid URL") }
        
        // Begin fetching the data and wait for the response to come back
        // await - don't go onto next step until this is done
        // URLSession's .data(from:) method returns a tuple - (actual binary data retrieved from server, response object). Here we ignore the response object
        let (data, _) = try await session.data(from: url)
        
        // Decode the name from the `Data` type using our `JSONDecoder`
        let name = try decoder.decode(String.self, from: data)
        
        // Return the decoded name
        return name
    }
    /*
    // ApprenticeshipService.swift
    public func fetchManyApprentices(count: Int?) async throws -> [String] {
        let components = URLComponents(string: "https://learning.appteamcarolina.com/networking-demo/apprentices")
        guard let url = components?.url else { fatalError("Invalid URL") }
        
        let (data, _) = try await session.data(from: url)
        let names = try decoder.decode([String].self, from: data)
        return names
    }

    // ApprenticeshipViewModel.swift
    func fetchManyApprentices() {
        Task {
            do {
                let names = try await service.fetchManyApprentices(count: 1) //insert count
                self.apprentices = names
            } catch {
                self.errorMessage = String(describing: error)
            }
        }
    }
     */
}
