//
//  performanceAppraisal.swift
//  PracticeCodingTest
//
//  Created by 김유준 on 2023/04/06.
//

import Foundation

func performanceAppraisalSolution(_ scores:[[Int]]) -> Int {
    var rank = 1
    let wanho = scores[0]
    let wanhoTotalScore = wanho.reduce(0, +)
    let sortedTotalScores = scores.sorted(by: { $0[0] > $1[0] || ($0[0] == $1[0] && $0[1] < $1[1]) })
    var yMaximum = 0
    
    for score in sortedTotalScores {
        if wanho[0] < score[0] && wanho[1] < score[1] {
            return -1
        }
        if yMaximum <= score[1] {
            let totalScore = score.reduce(0, +)
            if wanhoTotalScore < totalScore {
                rank += 1
            }
            yMaximum = score[1]
        }
    }
    
    return rank
}
