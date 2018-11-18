package com.nvtcracker.btl;

import android.content.Context;
import android.support.annotation.NonNull;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import java.util.List;

/**
 * Created by NVTCracker on 11/15/2017.
 */

public class Custom_Adapter extends ArrayAdapter<ManagerHighScore>{
    TextView hienten,hienscore;
    List<ManagerHighScore> ds;
    Context context;
    int resource;
    public Custom_Adapter(Context context, int resource, List<ManagerHighScore> ds) {
        super(context, resource, ds);
        this.context=context;
        this.ds=ds;
        this.resource=resource;
    }

    @NonNull
    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        LayoutInflater inflater= (LayoutInflater) getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View v= inflater.inflate(resource,parent,false);
        hienten= (TextView) v.findViewById(R.id.hienten);
        hienscore=(TextView) v.findViewById(R.id.hienscore);
        hienten.setText("Name: "+ds.get(position).getName().toString());
        hienscore.setText("Score: "+String.valueOf(ds.get(position).getScore()));
        return v;
    }
}
