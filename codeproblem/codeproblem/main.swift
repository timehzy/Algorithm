//
//  main.swift
//  codeproblem
//
//  Created by Michael-Nine on 2019/2/23.
//  Copyright © 2019 Michael. All rights reserved.
//

import Foundation


// 1.1.13 打印二维数组的转置（行列交换）
func transform(arr: [[Int]]) {
    for i in 0..<arr.count {
        var output = ""
        for j in 0..<arr.first!.count {
            output.append(String(arr[j][i]))
        }
        print(output)
    }
}
transform(arr: [[1,2,3],[4,5,6],[7,8,9]])

// 1.1.14接受参数N，返回不大于log2N的最大正数，不要使用数学函数
func lg(N: Int) -> Int {
    var result = 0
    var count = 0
    
    while result*2 <= N {
        result *= 2
        count += 1
    }
    
    return count
}

// 1.1.16 给出exR1(6)的返回值
func exR1(_ n: Int) -> String {
    if n <= 0 {return ""}
    return exR1(n-3) + String(n) + exR1(n-2) + String(n);
}
/*
 解：
    1.输入6，不符合第一个条件判断，到第二行，执行exR1(6-3)；
    2.exR1(3)，不符合第一个条件判断，到第二行，执行exR1(3-3)；
    3.符合条件判断，返回 "";
    4.回到2，exR1(3-3)结果为""，因此表达式变为 "" + "3" + exR1(1) + "3"
    5.执行exR1(1)，表达式变为 exR1(1-3) + "1" + exR1(1-1) + "1"
    6.执行exR1(1-3)，返回值""
    7.回到5，表达式变为 "" + "1" + "" + "1"
    8.回到4，表达式变为 "3"+ "11" + "3"
    9.回到2，表达式变为 "3113" + "6" + exR1(4) + "6"
    10.
 */

print(exR1(6))

// 1.1.18 分析该递归函数，解答见文件 1.1.18递归函数分析.png
func mystery(a: Int, b: Int) -> Int {
    if b==0 {return 0}
    if b % 2 == 0 {return mystery(a: a+a, b: b/2)}
    return mystery(a: a+a, b: b/2) + a
}

print(mystery(a: 2, b: 25))

