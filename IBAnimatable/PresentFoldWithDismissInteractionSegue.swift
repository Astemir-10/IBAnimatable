//
//  Created by Tom Baranes on 09/04/16.
//  Updated by Mark Hamilton on 5/30/16
//  Copyright © 2016 Jake Lin. All rights reserved.
//

import UIKit

public class PresentFoldWithDismissInteractionSegue: UIStoryboardSegue {
  public override func perform() {
    destinationViewController.transitioningDelegate = PresenterManager.sharedManager().retrievePresenter(.Fold(fromDirection: .Left, params: []), interactiveGestureType: .Default)
    sourceViewController.presentViewController(destinationViewController, animated: true, completion: nil)
  }
  public func perform(completion: OptionalAnimatableCompletion) {
    destinationViewController.transitioningDelegate = PresenterManager.sharedManager().retrievePresenter(.Fold(direction: .Left, params: []), interactiveGestureType: .Default)
    sourceViewController.presentViewController(destinationViewController, animated: true, completion: completion)
  }
}
