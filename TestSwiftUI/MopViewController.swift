//
//  ViewController.swift
//  TestSwiftUI
//
//  Created by Razee Hussein-Jamal on 2023-09-15.
//

import Foundation
import SwiftUI
import UIKit
import Framework

struct MopViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)

        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        let vc = MopProgrammaticVC()
        vc.nextViewController = UIHostingController(rootView: SecondView())

        pageViewController.setViewControllers(
            [vc], direction: .forward, animated: true)
    }
}
