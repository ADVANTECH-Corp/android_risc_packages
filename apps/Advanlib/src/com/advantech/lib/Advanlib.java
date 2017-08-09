package com.advantech.lib;

import android.annotation.SdkConstant;
import android.annotation.SdkConstant.SdkConstantType;
import android.annotation.SystemApi;
import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.WorkSource;
import android.os.Messenger;
import android.util.Log;
import android.util.SparseArray;
import android.os.ServiceManager;
import android.os.IAdvSdkService;
import android.view.Window;
import android.advsdklib.AdvSdklib;

public class Advanlib {
    private static final String TAG = "com.advantech.Advanlib";
    private Context mContext;
    private IAdvSdkService mAdvSdkService;
    private AdvSdklib mAdvSdklib;

    //Advlib init
    public Advanlib(Context context) {
	mContext = context;
	mAdvSdkService = IAdvSdkService.Stub.asInterface(ServiceManager.getService("advsdk"));
	mAdvSdklib = new AdvSdklib(mContext);
    }

    //Advlib api
    public boolean setWifiTethering(boolean enable) {
	try {
            return mAdvSdkService.setWifiTethering(enable);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
	return false;
    }
    
    public void setBrightness(int brightness) {
        try {
            mAdvSdkService.setBrightness(brightness);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void showNavigationBar(Window win, boolean show){
            mAdvSdklib.showNavigationBar(win, show);
    }
    
    public void showStatusBar(Window win, boolean show){
            mAdvSdklib.showStatusBar(win, show);
    }
    
} 

