import UIKit

public final class TouchesScrollView: UIScrollView {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }

    private func setup() {
        self.canCancelContentTouches = true
    }

    public override func touchesShouldCancel(in view: UIView) -> Bool {
        if view.isKind(of: UIButton.self) {
            return true
        }
        return super.touchesShouldCancel(in: view)
    }
}
