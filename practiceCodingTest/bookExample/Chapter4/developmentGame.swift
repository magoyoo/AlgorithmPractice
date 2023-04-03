import Foundation

func developmentGame(_ firstLine: String, _ secondLine: String, _ third: [[Int]]){
    let m = Int(firstLine.split(separator: " ")[0])! // 가로가 m 갯수
    var a = Int(secondLine.split(separator: " ")[0])! + 1// 북쪽  현재 좌표
    var b = Int(secondLine.split(separator: " ")[1])! + 1// 남쪽  현재 좌표
    var direction = Int(secondLine.split(separator: " ")[2])! // 방향
    let rotation = [
        (0, -1), // 북쪽 0
        (1, 0), // 동쪽 1
        (0, 1), // 남쪽 2
        (-1, 0)  // 서쪽 3
    ]
    
    var isBehindSee = false
    var result = 1 // 육지에서 시작하기 때문에
    var map: [[Int]] = []
    for var item in third {
        item.insert(1, at: 0)
        item.append(1)
        map.append(item)
    }
    map.insert(Array(repeating: 1, count: m + 2), at: 0)
    map.append(Array(repeating: 1, count: m + 2))

    print(map)
    map[a][b] = -1
    
    while !isBehindSee {
        if map[b - 1][a] != 0
        && map[b + 1][a] != 0
        && map[b][a - 1] != 0
        && map[b][a + 1] != 0
        { // 갈 수 있는 곳이 없는 경우
            let backRotation = (direction + 2) % rotation.count
            let backStepA = a + rotation[backRotation].1
            let backStepB = b + rotation[backRotation].0
            if map[backStepB][backStepA] == 1 { // 뒤가 바다인 경우
                isBehindSee = true
            } else { // 뒤로 단순 이동
                b = backStepB
                a = backStepA
            }
        } else {
            var nextStepA = 0
            var nextStepB = 0
            // 1. 반시계 방향으로 회전한다.
            direction += 3
            nextStepA = a + rotation[direction%rotation.count].1
            nextStepB = b + rotation[direction%rotation.count].0
            // 2. 회전한 곳 앞이 어떤 곳인지 판단한다.
            if map[nextStepA][nextStepB] == 0 { // 육지면 이동
                map[nextStepA][nextStepB] = -1
                a = nextStepA
                b = nextStepB
                result += 1
            } else { } //다시 처음으로 돌아간다. 반시계로 회전 한다
        }
    }
    
    print(result)
}

