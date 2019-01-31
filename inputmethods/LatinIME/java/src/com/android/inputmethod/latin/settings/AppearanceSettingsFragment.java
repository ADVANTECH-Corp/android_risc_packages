/*
 * Copyright (C) 2014 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.inputmethod.latin.settings;

import android.os.Bundle;

import com.android.inputmethod.latin.R;
import com.android.inputmethod.latin.common.Constants;
import com.android.inputmethod.latin.define.ProductionFlags;

//AIM_Android 2.1.1 +++
import android.os.SystemProperties; 
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.util.Log;
//AIM_Android 2.1.1 ---

/**
 * "Appearance" settings sub screen.
 */
public final class AppearanceSettingsFragment extends SubScreenFragment {

    private static final String TAG = "AppearanceSettingsFragment";

    @Override
    public void onCreate(final Bundle icicle) {
        super.onCreate(icicle);
        addPreferencesFromResource(R.xml.prefs_screen_appearance);
        if (!ProductionFlags.IS_SPLIT_KEYBOARD_SUPPORTED ||
                Constants.isPhone(Settings.readScreenMetrics(getResources()))) {
            removePreference(Settings.PREF_ENABLE_SPLIT_KEYBOARD);
        }
    }
    
    // AIM_Android 2.1.1 +++
    @Override
    public void onSharedPreferenceChanged(final SharedPreferences prefs, final String key) {
        final Resources res = getResources();
//         Log.d(TAG, "onSharedPreferenceChanged key: " + key);
        if (key.equals(Settings.PREF_ENABLE_SPLIT_KEYBOARD)) {
            SystemProperties.set("persist.cust.kb.split", Settings.readKeyEnableSplitKeyboard(prefs)? "true" : "false");
        }
    }
    // AIM_Android 2.1.1 ---

    @Override
    public void onResume() {
        super.onResume();
        CustomInputStyleSettingsFragment.updateCustomInputStylesSummary(
                findPreference(Settings.PREF_CUSTOM_INPUT_STYLES));
        ThemeSettingsFragment.updateKeyboardThemeSummary(findPreference(Settings.SCREEN_THEME));
    }
}
