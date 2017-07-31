A sample project for <https://github.com/facebook/AsyncDisplayKit/issues/2885>。

### QUESTION:

I just use ASDK soon, found `ASTextNode` display abnormal when  input with some string contains `/`。

### PNG show the issue:

* Blue backgroundColor is `ASTextNode`, Red backgroundColor is `UILabel`

![](https://ws1.sinaimg.cn/large/c6a1cfeagy1fi2w6rmc21j207i0arjs3.jpg)

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

### FIXED:

In the [https://github.com/TextureGroup/Texture/issues/173](https://github.com/TextureGroup/Texture/issues/173),  [smeis](https://github.com/smeis) said:

```
The difference in behavior between ASTextNode 
and UILabel observed in the Demo app is caused by the fact 
that the default truncation settings are different.
UILabel has NSLineBreakByTruncatingTail as default 
and ASTextNode has NSLineBreakByWordWrapping as default.
If you set truncationMode to NSLineBreakByTruncatingTail 
it will behave in the same manner as UILabel.
```

and then , I add my code:

```
textNode.truncationMode = .byTruncatingTail
```


![](https://ws1.sinaimg.cn/large/c6a1cfeagy1fi2w74f7uwj20pi16ywi3.jpg)