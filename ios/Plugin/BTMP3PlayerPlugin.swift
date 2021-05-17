import Foundation
import Capacitor
import AVFoundation

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(BTMP3PlayerPlugin)
public class BTMP3PlayerPlugin: CAPPlugin {
    private let implementation = BTMP3Player()
    private var audioPlayer: AVAudioPlayer?

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
    
    @objc func playMusic(_ call: CAPPluginCall) {
        let urlStr = call.getString("value") ?? ""
        let url = URL(fileURLWithPath: urlStr)
        print("music impl called ...")
        //play it!
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.numberOfLoops = -1
            audioPlayer?.prepareToPlay()
        } catch {
            print("加载音频文件出错")
        }
        audioPlayer?.play()
        call.resolve()
    }
}
