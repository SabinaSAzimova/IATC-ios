//
//  MainViewModel.swift
//  Session1_classwork
//
//  Created by Sabina Azimova on 16.04.22.
//

import Foundation

class MainViewModel {
    private let carRepo = CarRepository()
    
    func getCars() -> [Car] {
        return self.carRepo.getCars()
    }
}
