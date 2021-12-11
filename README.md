## 原生与RN交互相关要点记录
### 1、ReactToRN——原生调用RN（原生发送消息到RN）；
###### ReactNative.js
<pre><code>
  import React from "react";
  import { NativeModules, NativeEventEmitter } from "react-native";
  
  const nativeEvent = new NativeEventEmitter(NativeModules.RNToReact);

  export default class ReactNative extends React.Component {
    
    componentDidMount() {
      nativeEvent.rnToReactMessage();
    }
  }

</code></pre>
### 2、RNToReact——RN调用原生（RN发送消息到原生）；
