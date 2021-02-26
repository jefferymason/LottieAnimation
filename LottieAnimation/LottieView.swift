//
//  LottieView.swift
//  LottieAnimation
//
//  Created by Jeff Mason on 2/26/21.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
    var loopMode: LottieLoopMode = .loop
    
  typealias UIViewType = UIView
  var filename: String
  
  func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
    let view = UIView(frame: .zero)
    
    let animationView = AnimationView()
    let animation = Animation.named("zomibe")
    animationView.animation = animation
    animationView.contentMode = .scaleAspectFit
    animationView.loopMode = loopMode
    animationView.play()
    

    
    animationView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(animationView)
    
    NSLayoutConstraint.activate([
      animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
      animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
      animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
    
    return view
  }
  
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) { }
}
