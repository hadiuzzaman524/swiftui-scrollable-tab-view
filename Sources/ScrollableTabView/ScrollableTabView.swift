/// A view that provides a horizontally scrollable tab view with customizable tab items.
///
/// - Parameters:
///   - activeBgColor: The background color of the active tab.
///   - inactiveBgColor: The background color of inactive tabs.
///   - activeColor: The foreground color of the active tab.
///   - inActiveColor: The foreground color of inactive tabs.
///   - cornerRadius: The corner radius of the tabs.
///   - spaceBetween: The space between each tab.
///   - items: An array of `TabItem` representing the tabs.


import SwiftUI

@available(iOS 13.0, *)
public struct ScrollableTabView: View {
    
    public let activeBgColor: Color
    public let inactiveBgColor: Color
    public  let activeColor: Color
    public let inActiveColor: Color
    public let cornerRadius: CGFloat
    public let spaceBetween: CGFloat
    public let leadingSpace: CGFloat
    public let trailingSpace: CGFloat
    public let items: [TabItem]
    @State private var index = 0
    
    public init(
        activeBgColor: Color = Color.accentColor,
        inactiveBgColor: Color = Color.gray,
        activeColor: Color = Color.primary,
        inActiveColor: Color = Color.secondary,
        leadingSpace: CGFloat = 0,
        trailingSpace: CGFloat = 0,
        cornerRadius: CGFloat = 12,
        spaceBetween: CGFloat = 12,
        
        items: [TabItem]
    ) {
        self.items = items
        self.activeBgColor = activeBgColor
        self.inactiveBgColor = inactiveBgColor
        self.activeColor = activeColor
        self.inActiveColor = inActiveColor
        self.leadingSpace = leadingSpace
        self.trailingSpace = trailingSpace
        self.cornerRadius = cornerRadius
        self.spaceBetween = spaceBetween
    }
    
   public var body: some View {
        if #available(iOS 14.0, *) {
            ScrollViewReader { proxy in
                if #available(iOS 17.0, *) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing:spaceBetween) {
                            Spacer().frame(width: leadingSpace)
                            ForEach(0..<items.count, id: \.self) { id in
                                let item = items[id]
                                let title = item.title
                                    .onTapGesture {
                                        withAnimation {
                                            index = id
                                        }
                                    }
                                if self.index == id {
                                    title.foregroundColor(activeColor)
                                        .background(activeBgColor)
                                        .cornerRadius(cornerRadius)
                                } else {
                                    title.foregroundColor(inActiveColor)
                                        .background(inactiveBgColor)
                                        .cornerRadius(cornerRadius)
                                }
                            }
                            Spacer().frame(width: trailingSpace)
                        }
                    }
                    .onChange(of: index) { old, new in
                        withAnimation {
                            proxy.scrollTo(new, anchor: .center)
                        }
                    }
                }
            }
        }
        if #available(iOS 14.0, *) {
            TabView(selection: $index) {
                ForEach(0..<items.count, id: \.self) { page in
                    if abs(page - index) <= 0 {
                        items[page].body
                            .tag(page)
                    } else {
                        Color.clear
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

@available(iOS 13.0, *)
public struct TabItem {
    public let title: AnyView
    public let body: AnyView
    public init<Title: View, Body: View>(
        title: Title,
        body: Body
        
    ) {
        self.title = AnyView(title)
        self.body = AnyView(body)
    }
}


@available(iOS 13.0, *)
public struct WithText: View {
    public let text:String
    public let cornerRadius:CGFloat
    public init(text: String, cornerRadius: CGFloat = 12) {
        self.text = text
        self.cornerRadius = cornerRadius
    }
    public var body: some View {
        if #available(iOS 15.0, *) {
            Text(text).padding(.horizontal, 12)
                .padding(.vertical,6)
                .background(.regularMaterial)
                .cornerRadius(cornerRadius)
        }
    }
}


public struct WithTextAndIcon: View {
    public let text: String
    public let systemName:String
    public let cornerRadius:CGFloat
    public init(text: String, systemName: String, cornerRadius: CGFloat = 12) {
        self.text = text
        self.systemName = systemName
        self.cornerRadius = cornerRadius
    }
    @available(iOS 13.0, *)
    public var body: some View {
        if #available(iOS 15.0, *) {
            HStack{
                Image(systemName: systemName)
                Text(text)
                
            }.padding(.horizontal, 12)
                .padding(.vertical,6)
                .background(.regularMaterial)
                .cornerRadius(cornerRadius)
        }
    }
}


