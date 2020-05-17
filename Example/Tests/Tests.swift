// https://github.com/Quick/Quick

import Quick
import Nimble
@testable import craftyBlankState

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        
        describe("test if it says the right messages") {
            context("when it has no dataSource") {
                let view = CraftyBlankStateView()
                beforeEach {
                    view.refresh()
                }
                it("has a default message") {
                    expect("Looks like there's nothing here. Come back later.").to(equal(view.msgLbl.text))
                }
            }
            
            context("when it has a dataSource") {
                let view = CraftyBlankStateView()
                beforeEach {
                    class ViewController: UIViewController, CraftyBlankStateDataSource {
                        func image(in blankStateView: CraftyBlankStateView) -> UIImage? {
                            return nil
                        }
                        
                        func message(in blankStateView: CraftyBlankStateView) -> String {
                            return "This is a test"
                        }
                        
                        func font(in blankStateView: CraftyBlankStateView) -> UIFont {
                            return UIFont.systemFont(ofSize: 17, weight: .medium)
                        }
                    }
                    let vc = ViewController()
                    view.dataSource = vc
                    view.refresh()
                }
                it("it gets the message from the datasource") {
                    expect("This is a test").to(equal(view.msgLbl.text))
                }
            }
        }

    }
}
