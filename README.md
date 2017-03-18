A sample project for <https://github.com/facebook/AsyncDisplayKit/issues/2885>。

I just use ASDK soon, found `ASTextNode` display abnormal when  input with some string contains `/`。

## UPDATE: 

### PNG show the issue:

* Blue backgroundColor is `ASTextNode`, Red backgroundColor is `UILabel`

![](http://ww1.sinaimg.cn/large/c6a1cfeagy1fdqvs0c0qnj20cr0lhdh2.jpg)

* I found this issue show when string contains whiteSpace, `/` , `;` ,maybe include more symbols.

### Here is my code:

* `loadASTextNode`

```
func loadTextNode(y: CGFloat, with text: String) {
    let textNode = ASTextNode()
    textNode.attributedText = NSAttributedString(string: text,
                                                 attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 16),
                                                              NSForegroundColorAttributeName: UIColor.red])
    textNode.frame = CGRect(x: 100, y: y, width: 200, height: 20)
    textNode.backgroundColor = UIColor.blue
    view.addSubnode(textNode)
}
```

* `loadUILabel`

```
func loadUILabel(y: CGFloat, with text: String) {
    let label = UILabel()
    label.text = text
    label.textColor = UIColor.blue
    label.backgroundColor = UIColor.red
    label.frame = CGRect(x: 100, y: y, width: 200, height: 20)
    view.addSubview(label)
}
```

### If my code have any question, maybe somebody can help me.Thanks.