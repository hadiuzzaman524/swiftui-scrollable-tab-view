# ScrollableTabView
ScrollableTabView is a customizable, horizontally scrollable tab view built in SwiftUI. It allows you to display multiple tabs with smooth scrolling and animation. The tabs can be styled with different colors, backgrounds, and layouts. The package includes predefined tab item views like WithText and WithTextAndIcon, which make it easy to display text or text with an icon in your tabs.

## Features
- Horizontally scrollable tabs with customizable background and foreground colors.
- Support for active/inactive tab states with separate styles.
- Adjustable tab corner radius, spacing, and padding.
- Easy-to-use TabItem initializer to define custom tab views.
- Smooth transitions and animations between tabs.
- Works with SwiftUI's TabView for content rendering.

## Installation

Swift Package Manager (SPM)
To install the ScrollableTabView using Swift Package Manager, follow these steps:

1. Open your Xcode project.

2. Go to File > Add Packages.

3. In the search bar, paste the following URL:

```bash
https://github.com/hadiuzzaman524/swiftui-scrollable-tab-view.git

```
4. Select the package and click Add Package to integrate it into your project.


To create a `ScrollableTabView`, initialize it with an array of TabItem instances that define the title and body for each tab.

### Example 1: Simple Text Tabs
```swift
import SwiftUI
import ScrollableTabView

struct ContentView: View {
    var body: some View {
        ScrollableTabView(
            items: [
                TabItem(title: WithText(text: "Home"), body: Text("Home Content")),
                TabItem(title: WithText(text: "Profile"), body: Text("Profile Content")),
                TabItem(title: WithText(text: "Settings"), body: Text("Settings Content"))
            ]
        )
    }
}

```
Each tab's title is displayed using the WithText component.
The corresponding body is simple text content.

### Example 2: Tabs with Icons

```swift
import SwiftUI
import ScrollableTabView

struct ContentView: View {
    var body: some View {
        ScrollableTabView(
            items: [
                TabItem(title: WithTextAndIcon(text: "Home", systemName: "house"), body: Text("Home Content")),
                TabItem(title: WithTextAndIcon(text: "Profile", systemName: "person.circle"), body: Text("Profile Content")),
                TabItem(title: WithTextAndIcon(text: "Settings", systemName: "gearshape"), body: Text("Settings Content"))
            ]
        )
    }
}

```
### Custom Styling
`ScrollableTabView` allows you to fully customize the appearance of the tabs through several styling parameters. You can control the background color, foreground color, corner radius, and spacing for both active and inactive states of the tabs.

#### Customizing Background and Foreground Colors
You can change the background and text (foreground) colors of the active and inactive tabs using the following parameters:

- `activeBgColor`: The background color of the active tab.
- `inactiveBgColor`: The background color of inactive tabs.
- `activeColor`: The text (foreground) color of the active tab.
- `inActiveColor`: The text (foreground) color of inactive tabs.
- `cornerRadius`: Controls the roundness of the tab corners.
- `spaceBetween`: Defines the space between each tab in the scroll view.
- `leadingSpace` and `trailingSpace`: Set custom padding before the first tab and after the last tab, respectively.

```swift
import SwiftUI
import ScrollableTabView

struct ContentView: View {
    var body: some View {
        ScrollableTabView(
            activeBgColor: Color.green,
            inactiveBgColor: Color.orange,
            activeColor: Color.white,
            inActiveColor: Color.black,
            cornerRadius: 16,
            spaceBetween: 10,
            leadingSpace: 20,
            trailingSpace: 20,
            items: [
                TabItem(title: WithTextAndIcon(text: "Home", systemName: "house"), body: Text("Home Content")),
                TabItem(title: WithTextAndIcon(text: "Search", systemName: "magnifyingglass"), body: Text("Search Content")),
                TabItem(title: WithTextAndIcon(text: "Settings", systemName: "gearshape"), body: Text("Settings Content"))
            ]
        )
    }
}


```
