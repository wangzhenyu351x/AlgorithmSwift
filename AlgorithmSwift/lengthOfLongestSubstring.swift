//
//  最长子串.swift
//  _SwfitCmd
//
//  Created by zhenyu on 2022/11/7.
//

import Foundation

class SolutionLengthOfLongestSubstring {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLen = 0
        var map:[CChar:Int] = [:]
        var beginIdx = -1
        var sIdx = 0
//        print(s)
        for sChar in s.utf8CString {
            if sChar == 0 {
                break;
            }
            let idx = map[sChar]
            if idx != nil && idx! >= 0 {

                let idx_ = idx!
//                print(sChar,idx_)
                for (key,value) in map {
                    if value >= 0 && value < idx_ {
//                        print("here",key,value)
                        map[key] = -1
                    }
                }
                beginIdx = idx_
            }
            map[sChar] = sIdx
//            print("sIdx",sIdx,beginIdx)
            maxLen = max(sIdx - beginIdx, maxLen)
            sIdx += 1
        }
        return maxLen
    }

    func testCaseWith(_ str:String, _ len:Int) -> Bool {
        let s = SolutionLengthOfLongestSubstring()
        let res = s.lengthOfLongestSubstring(str)
        print(res,len)
        return res == len
    }

    func testCase() {
        testCaseWith(" ", 1);
        testCaseWith("bbbb", 1);
        testCaseWith("abba", 2);
        testCaseWith("abcabcbb", 3);
        testCaseWith("bbbbb", 1);
        testCaseWith("pwwkew", 3);
    }
}

extension TestClass {
    static func staticTest() {
//        SolutionLengthOfLongestSubstring().testCase()
    }
}
