# YKLabel
继承UILabel使得label在竖直方向支持居上，居中，居下布局

朋友遇到一个问题，需要label支持居上对齐。所以我就写了一个给他
***
##如何使用
`self.tf.text = @"这是个测试";
self.tf.verticalAlignment = YKLabelVerticalAlignmentModelBottom;//竖直方向
self.tf.textAlignment = NSTextAlignmentCenter;//水平方向
self.tf.textColor = [UIColor redColor];`
##说明
这个类封装的也不是很好，我之后会进一步封装优化一下。如果你有比较好的方法的话欢迎联系我zhaofuwen93@163.com
