package com.mosaedbarmaja.exchangenew;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;

/**
 * محول مخصص لعرض قائمة الأسعار بتصميم احترافي
 */
public class PriceListAdapter extends ArrayAdapter<String> {

    private Context context;
    private String[] priceNames;

    // ألوان الأرقام (تتناوب)
    private final int[] numberColors = {
            R.color.btn_analytics,   // أخضر
            R.color.btn_agents,      // برتقالي
            R.color.btn_records,     // أزرق
            R.color.btn_calculator   // بنفسجي
    };

    public PriceListAdapter(@NonNull Context context, String[] priceNames) {
        super(context, R.layout.item_price_list, priceNames);
        this.context = context;
        this.priceNames = priceNames;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        ViewHolder holder;

        if (convertView == null) {
            convertView = LayoutInflater.from(context).inflate(
                    R.layout.item_price_list,
                    parent,
                    false
            );

            holder = new ViewHolder();
            holder.sequenceNumber = convertView.findViewById(R.id.tv_sequence_number);
            holder.priceName = convertView.findViewById(R.id.tv_price_name);

            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }

        // تعيين رقم التسلسل
        holder.sequenceNumber.setText(String.valueOf(position + 1));

        // تعيين لون الرقم بالتناوب
        int colorIndex = position % numberColors.length;
        int color = ContextCompat.getColor(context, numberColors[colorIndex]);
        holder.sequenceNumber.setTextColor(color);

        // تعيين اسم التسعيرة
        holder.priceName.setText(priceNames[position]);

        return convertView;
    }

    /**
     * ViewHolder لتحسين الأداء
     */
    static class ViewHolder {
        TextView sequenceNumber;
        TextView priceName;
    }
}
