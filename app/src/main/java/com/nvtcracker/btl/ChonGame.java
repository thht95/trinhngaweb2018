package com.nvtcracker.btl;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;

public class ChonGame extends AppCompatActivity implements View.OnClickListener{
    Button btnexit,btnabout,btnplay,btnhighscore;
    Sqlite sql1;
    List<ManagerHighScore> list;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sql1= new Sqlite(ChonGame.this);
        setContentView(R.layout.activity_chon_game);
        btnexit= (Button) findViewById(R.id.btnexit);
        btnplay= (Button) findViewById(R.id.btnplay);
        btnabout= (Button) findViewById(R.id.btnabout);
        btnhighscore= (Button) findViewById(R.id.btnhigh);
        btnhighscore.setOnClickListener(this);
        btnexit.setOnClickListener(this);
        btnabout.setOnClickListener(this);
        btnplay.setOnClickListener(this);
    }

    @Override
    public void onClick(View view) {
        switch (view.getId())
        {
            case R.id.btnplay:
                Intent intent= new Intent(ChonGame.this,GameActivity.class);
                startActivity(intent);

                break;
            case R.id.btnhigh:
                okay();
                break;
            case R.id.btnabout:
                    about();
                break;
            case R.id.btnexit:
                    finish();
                break;
        }
    }
    void about()
    {
       // AlertDialog.Builder alert = new AlertDialog.Builder(this);
       // alert.setTitle("Thông tin ứng dụng :");
       // alert.setMessage("Đập chuột Version 1.0" +
        //        "\n Tác giả : Trung Kiên, Tính, Trang" +
         //       "\n GVHD : Lê Hữu Dũng");
       // alert.show();
        final AlertDialog.Builder alert = new AlertDialog.Builder(this);
        alert.setTitle("Thông tin ứng dụng ! :");
        alert.setMessage("Game đập chuột version 1.0"+
                "\n Tác giả : Trung Kiên, Tính, Trang"+
                "\n GVHD : Lê Hữu Dũng"
        );
        alert.setPositiveButton("Ok!", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });

        alert.show();
    }


    void okay()
    {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("High Score");

        ListView modeList = new ListView(this);

        List<ManagerHighScore> list= sql1.ds();
        Custom_Adapter a= new Custom_Adapter(this,R.layout.custom_adapter,list);
        a.notifyDataSetChanged();
        modeList.setAdapter(a);

        builder.setView(modeList);
        builder.setPositiveButton("Ok!", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.show();
    }

}
