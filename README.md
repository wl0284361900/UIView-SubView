# UIView 圖層控制

- 在索引處插入Subview ：(基於index的)
```
- (void)insertSubview:(UIView *)view atIndex:(NSInteger)index;
```
效果：
![](https://i.imgur.com/8jPatHb.png)

代碼：
https://gist.github.com/5de72361050a9acf71d9b0e83b881fc1.git

---

- 在子視圖下面插入子視圖：
```
- (void)insertSubview:(UIView *)view belowSubview:(UIView *)siblingSubview;
```
greenView視圖添加在redView視圖之下 可以這樣實現
![](https://i.imgur.com/IuVXwsM.png)

![](https://i.imgur.com/Q1pOR5s.png)


---

- 在子視圖上方插入子視圖：
```
- (void)insertSubview:(UIView *)view aboveSubview:(UIView *)siblingSubview;
```

我們想講greenView視圖 添加在blueView視圖之上 可以這樣實現
![](https://i.imgur.com/nffaZ63.png)
![](https://i.imgur.com/lpfegSC.png)

---

- addSubview 是像Stack一樣
- 第一個放進去是放在[0] 第二個是[1] 以此類推...

---

- 將子視圖往後挪 subviews[1] -> subviews[0]

```
- (void)sendSubviewToBack:(UIView *)view;
```

![](https://i.imgur.com/gfHBCWq.png)

![](https://i.imgur.com/KNEtLMb.png)

完整代碼：

![](https://i.imgur.com/M2mjwuC.png)


---

- 將子試圖往前挪 subviews[0] -> subview[1];

```
- (void)bringSubviewToFront:(UIView *)view;
```
![](https://i.imgur.com/OONnie8.png)

![](https://i.imgur.com/TDjLKU3.png)

完整代碼：

![](https://i.imgur.com/Oj8QSH8.png)


---

- subviews
> 數組中子視圖的順序反映了它們在屏幕上的可見順序，索引為0的視圖是最下面一個。

![](https://i.imgur.com/mAK7Gl6.png)

![](https://i.imgur.com/leR46Jl.png)

![](https://i.imgur.com/gXxzEAw.png)

---

### Github: 
https://github.com/wl0284361900/UIView-SubView/new/main?readme=1


參考網站：
- https://www.jianshu.com/p/5b27724beefa
###### tags: `Objective-C`
