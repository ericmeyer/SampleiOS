import Quick
import Nimble

class FooSpec: QuickSpec {
    
    override func spec() {
        it("is passing") {
            let foo = Foo()
            expect(foo.bar()).to(equal("Hello World"))
        }
    }
    
}
