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

/**
 * محول مخصص لعرض قائمة العمولات بتصميم احترافي
 * مع ألوان برتقالية داكنة وحديدية
 */
public class CommissionListAdapter extends ArrayAdapter<String> {

    private Context context;
    private String[] commissionNames;

    // ✅ ألوان برتقالية داكنة وحديدية (Steel Orange/Copper)
    private final String[] numberColors = {
            "#D35400",  // برتقالي داكن (Dark Orange)
            "#E67E22",  // برتقالي نحاسي (Copper)
            "#BA4A00",  // برتقالي صدأ (Rust)
            "#CA6F1E",  // برتقالي حديدي (Steel Orange)
            "#DC7633",  // برتقالي محروق (Burnt Orange)
            "#A04000"   // برتقالي بني (Brown Orange)
    };

    public CommissionListAdapter(@NonNull Context context, String[] commissionNames) {
        super(context, R.layout.item_commission_list, commissionNames);
        this.context = context;
        this.commissionNames = commissionNames;
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        ViewHolder holder;

        if (convertView == null) {
            convertView = LayoutInflater.from(context).inflate(
                    R.layout.item_commission_list,
                    parent,
                    false
            );

            holder = new ViewHolder();
            holder.sequenceNumber = convertView.findViewById(R.id.tv_sequence_number);
            holder.commissionName = convertView.findViewById(R.id.tv_price_name);

            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }

        // تعيين رقم التسلسل
        holder.sequenceNumber.setText(String.valueOf(position + 1));

        // تعيين لون الرقم بالتناوب (برتقالي داكن)
        int colorIndex = position % numberColors.length;
        holder.sequenceNumber.setTextColor(Color.parseColor(numberColors[colorIndex]));

        // تعيين اسم العمولة
        holder.commissionName.setText(commissionNames[position]);

        return convertView;
    }

    /**
     * ViewHolder لتحسين الأداء
     */
    static class ViewHolder {
        TextView sequenceNumber;
        TextView commissionName;
    }
}
