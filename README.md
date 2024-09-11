# animated_carousel_swiftUI
Animated Carousel behaviour in swiftUI using scrollTargetBehavior(_:), scrollTargetLayout() &amp; scrollTransition(_:)

**scrollTargetBehavior(_:)**

The scrollTargetBehavior(_:) modifier is used to define how the scroll view aligns its content. In our case, we're using.viewAligned, which aligns the content such that it always snaps to the nearest edge of the scroll view. This behavior ensures that when users swipe to scroll through the carousel, the items are neatly aligned and easily distinguishable.

![alt text](https://github.com/karthik-pitchai03/animated_carousel_swiftUI/blob/main/Screenshot_1.png?raw=true)

**scrollTargetLayout()**

The scrollTargetLayout() modifier works in conjunction with scrollTargetBehavior(_:) to align the content of the scroll view. It ensures that the content layout adjusts dynamically based on the scroll position. In our example, we've applied it to the HStack containing the colored rectangles. This modifier helps maintain consistency in the layout and appearance of our carousel items as users interact with them.

![alt text](https://github.com/karthik-pitchai03/animated_carousel_swiftUI/blob/main/Screenshot_2.png?raw=true)

**scrollTransition(_:)**

The scrollTransition(_:) modifier allows us to apply custom animations to the content as it scrolls into view. It takes a closure with two parameters: content and phase. Inside the closure, we define the animation effects we want to apply to the content based on the scroll phase.

**content**: Represents the content view that is being scrolled.
**phase**: Represents the scroll phase, which includes information about the current scroll position and velocity.

![alt text](https://github.com/karthik-pitchai03/animated_carousel_swiftUI/blob/main/Screenshot_3.png?raw=true)
