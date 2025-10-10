package com.mosaedbarmaja.exchangenew;

import android.accessibilityservice.AccessibilityService;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Toast;

public class QuickCalculatorService extends AccessibilityService {
    @Override
    public void onAccessibilityEvent(AccessibilityEvent event) {
        // تم تعطيل الخدمة مؤقتاً
        Toast.makeText(this, "هذه الميزة قيد التطوير وستتوفر قريباً!", Toast.LENGTH_SHORT).show();
    }

    @Override
    public void onInterrupt() {
        // Required by AccessibilityService
    }
}