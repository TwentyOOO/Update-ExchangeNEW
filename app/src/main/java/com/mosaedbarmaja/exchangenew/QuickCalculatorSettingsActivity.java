package com.mosaedbarmaja.exchangenew;

import android.app.Activity;
import android.app.AlertDialog;
import android.os.Bundle;

public class QuickCalculatorSettingsActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        // عرض رسالة "قريباً" وإغلاق النشاط
        new AlertDialog.Builder(this)
            .setTitle("الحاسبة السريعة")
            .setMessage("سيتم إطلاق هذه الميزة قريباً!\n\nStay tuned!")
            .setPositiveButton("حسناً", (dialog, which) -> finish())
            .setCancelable(false)
            .show();
    }
}