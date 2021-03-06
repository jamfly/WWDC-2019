//
//  CharacterSendingState.swift
//  WWDC 2019
//
//  Created by jamfly on 16/03/2019.
//  Copyright © 2019 jamfly. All rights reserved.
//

import Foundation
import GameplayKit

final class CharacterSendingState: CharacterState {

  override func didEnter(from previousState: GKState?) {
    super.didEnter(from: previousState)
    character.message = message
  }

  override func willExit(to nextState: GKState) {
    super.willExit(to: nextState)
  }

  override func isValidNextState(_ stateClass: AnyClass) -> Bool {
    return stateClass is CharacterRecieveState.Type
  }

}
