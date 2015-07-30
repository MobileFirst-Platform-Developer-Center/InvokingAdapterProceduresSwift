/**
* Copyright 2015 IBM Corp.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import Foundation
import IBMMobileFirstPlatformFoundation

class MyConnectListener : NSObject, WLDelegate{
    let vc : ViewController
    var strResponse = ""
    
    init(vc: ViewController){
        self.vc = vc
    }
    
    func onSuccess(response: WLResponse!) {
        var resultText = "Connection success. "
        if(response != nil){
            resultText += response.responseText
        }
        self.vc.updateView(resultText)
    }
    
    func onFailure(response: WLFailResponse!) {
        var resultText = "Connection failure. "
        if(response != nil){
            resultText += response.errorMsg
        }
        self.vc.updateView(resultText)
    }
    
}