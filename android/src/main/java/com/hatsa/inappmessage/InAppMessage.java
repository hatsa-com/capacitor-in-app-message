package com.hatsa.inappmessage;

import com.getcapacitor.JSObject;
import com.getcapacitor.NativePlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.google.firebase.inappmessaging.FirebaseInAppMessaging;

@NativePlugin()
public class InAppMessage extends Plugin {

    @PluginMethod()
    public void triggerEvent(PluginCall call) {
        String value = call.getString("event");
        if (value != "" && value != null) {
            FirebaseInAppMessaging.getInstance().triggerEvent(value);
            call.success();
        } else {
            call.error("Missing parameter: event");
        }
    }
}
