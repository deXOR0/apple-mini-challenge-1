//
//  Mission.swift
//  VirtualPet
//
//  Created by Sherary Apriliana on 10/04/22.
//

import Foundation

class Mission {
    var missionID: Int
    let missionName: String
    var missionImage: String
    var missionTarget: Int
    var missionProgress: Int
    var missionReward: Int
    var isRewardClaimed: Bool
    var missionAchievedList: [Int]

    //missionImage: String sementara sebagai placeholder
    init(missionID: String, missionName: String, missionImage: String, missionTarget: Int, missionProgress: Int, missionReward: Int, isRewardClaimed: Bool) {
        self.missionID = missionID
        self.missionName = missionName
        self.missionImage = missionImage
        self.missionTarget = missionTarget
        self.missionProgress = missionProgress
        self.missionReward = missionReward
        self.isRewardClaimed = isRewardClaimed
        self.missionAchievedList = missionAchievedList
    }

    //function dipanggil melalui masing - masing parent function
    //di sini buat display ke reward page.
    //Ketika user mencapai target tertentu nanti pass ke parameter,
    //kemudian munculkan foto, nama reward, deskripsi, progress.
    //Design need: Pembeda antara yang sudah achieve, progress, sama yang belum unlock.
    //butuh economic systemnya & apa aja yang perlu dikasih penghargaan
    func congratulateUser() -> String {
        //muncul little pop up yang tulisannya pencapaian + deskripsi?
        return "\(missionName) \(missionTarget)"
    }

    func displayAchieved() -> [Int] {
        return missionAchievedList
    }
}
