package com.nvtcracker.btl;

import android.content.DialogInterface;
import android.os.CountDownTimer;
import android.os.Handler;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import org.w3c.dom.Text;

import java.util.Random;

public class GameActivity extends AppCompatActivity implements View.OnClickListener{
    ImageView ig1,ig2,ig3,ig4,ig5,ig6,ig7,ig8,ig9,ml,tim1,tim2,tim3;
    int x=0,d=0;

    Sqlite sql;
    TextView txtscore,txtthoigian;
    Handler han;
    CountDownTimer my;
    Runnable myrun;
    int diem=1;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_game);
        sql= new Sqlite(GameActivity.this);

        set();
        Change();
        Thoigian();
    }

    private void Thoigian() {

        my=new CountDownTimer(20000, 1000) {
            @Override
            public void onTick(long l) {

                txtthoigian.setText("Thời gian: "+ String.valueOf(l/1000));
            }

            @Override
            public void onFinish() {

               settime();

            }
        }.start();

    }
    void settime()
    {
        if(d==3) my.cancel();
        if(diem > sql.ds().get(0).getScore())
        {
            luu();
        }
        else
        {
            txtthoigian.setText("Thời gian:0");
            gamemessage();
        }
    }
    private void Change() {
        Random ran= new Random();
        int k= ran.nextInt(9);
        switch (k)
        {
            case 0:
                ig1.setImageResource(imgeChange());
                ig1.setVisibility(View.VISIBLE);
                an(ig1);
                break;
            case 1:
                ig2.setImageResource(imgeChange());
                ig2.setVisibility(View.VISIBLE);
                an(ig2);
                break;
            case 2:
                ig3.setImageResource(imgeChange());
                ig3.setVisibility(View.VISIBLE);
                an(ig3);
                break;
            case 3:
                ig4.setImageResource(imgeChange());
                ig4.setVisibility(View.VISIBLE);
                an(ig4);
                break;
            case 4:
                ig5.setImageResource(imgeChange());
                ig5.setVisibility(View.VISIBLE);
                an(ig5);
                break;
            case 5:
                ig6.setImageResource(imgeChange());
                ig6.setVisibility(View.VISIBLE);
                an(ig6);
                break;
            case 6:
                ig7.setImageResource(imgeChange());
                ig7.setVisibility(View.VISIBLE);
                an(ig7);
                break;
            case 7:
                ig8.setImageResource(imgeChange());
                ig8.setVisibility(View.VISIBLE);
                an(ig8);
                break;
            case 8:
                ig9.setImageResource(imgeChange());
                ig9.setVisibility(View.VISIBLE);
                an(ig9);
                break;

        }

    }
    void an(ImageView an1)
    {
         ml=an1;
        han= new Handler();
         myrun= new Runnable() {
            @Override
            public void run() {
                ml.setVisibility(View.INVISIBLE);
                Change();
            }
        };
        han.postDelayed(myrun,1500);

    }

    int imgeChange()
    {
        Random ran= new Random();
        int h= ran.nextInt(3);
        if (h==2) {
            x=0;
            return R.drawable.mouse1;
        }
        if(h==1)
        {
            x=0;
            return R.drawable.mouse2;
        }
        x=1;
        return R.drawable.cat;
    }

    private void set() {
        ig1= (ImageView) findViewById(R.id.imageView);
        ig2= (ImageView) findViewById(R.id.imageView2);
        ig3= (ImageView) findViewById(R.id.imageView3);
        ig4= (ImageView) findViewById(R.id.imageView4);
        ig5= (ImageView) findViewById(R.id.imageView6);
        ig6= (ImageView) findViewById(R.id.imageView7);
        ig7= (ImageView) findViewById(R.id.imageView8);
        ig8= (ImageView) findViewById(R.id.imageView9);
        ig9= (ImageView) findViewById(R.id.imageView10);
        tim1= (ImageView) findViewById(R.id.imgtim1);
        tim2= (ImageView) findViewById(R.id.imgtim2);
        tim3= (ImageView) findViewById(R.id.imgtim3);
        txtscore= (TextView) findViewById(R.id.txtscore);
        txtthoigian= (TextView) findViewById(R.id.txttime);

        ig1.setOnClickListener(this);
        ig2.setOnClickListener(this);
        ig3.setOnClickListener(this);
        ig4.setOnClickListener(this);
        ig5.setOnClickListener(this);
        ig6.setOnClickListener(this);
        ig7.setOnClickListener(this);
        ig8.setOnClickListener(this);
        ig9.setOnClickListener(this);

    }

    @Override
    public void onClick(View view) {

        switch (view.getId())
        {
            case R.id.imageView:
                    if(x==1) xoa();
                    txtscore.setText("Score: "+String.valueOf(diem++));
                    han.removeCallbacks(myrun);
                    ig1.setVisibility(View.INVISIBLE);
                    Change();
                break;
            case R.id.imageView2:
                if(x==1) xoa();
                txtscore.setText("Score: "+String.valueOf(diem++));
                han.removeCallbacks(myrun);
                ig2.setVisibility(View.INVISIBLE);
                Change();
                break;
            case R.id.imageView3:
                if(x==1) xoa();
                txtscore.setText("Score: "+String.valueOf(diem++));
                han.removeCallbacks(myrun);
                ig3.setVisibility(View.INVISIBLE);
                Change();
                break;
            case R.id.imageView4:
                if(x==1) xoa();
                txtscore.setText("Score: "+String.valueOf(diem++));
                han.removeCallbacks(myrun);
                ig4.setVisibility(View.INVISIBLE);
                Change();
                break;
            case R.id.imageView6:
                if(x==1) xoa();
                txtscore.setText("Score: "+String.valueOf(diem++));
                han.removeCallbacks(myrun);
                ig5.setVisibility(View.INVISIBLE);
                Change();
                break;
            case R.id.imageView7:
                if(x==1) xoa();
                txtscore.setText("Score: "+String.valueOf(diem++));
                han.removeCallbacks(myrun);
                ig6.setVisibility(View.INVISIBLE);
                Change();
                break;
            case R.id.imageView8:
                if(x==1) xoa();
                txtscore.setText("Score: "+String.valueOf(diem++));
                han.removeCallbacks(myrun);
                ig7.setVisibility(View.INVISIBLE);
                Change();
                break;
            case R.id.imageView9:
                if(x==1) xoa();
                txtscore.setText("Score: "+String.valueOf(diem++));
                han.removeCallbacks(myrun);
                ig8.setVisibility(View.INVISIBLE);
                Change();
                break;
            case R.id.imageView10:
                if(x==1) xoa();
                txtscore.setText("Score: "+String.valueOf(diem++));
                han.removeCallbacks(myrun);
                ig9.setVisibility(View.INVISIBLE);
                Change();
                break;
        }
    }

    private void xoa() {
        if(d==0) tim3.setVisibility(View.INVISIBLE);

        if(d==1) tim2.setVisibility(View.INVISIBLE);

        if(d==2) tim1.setVisibility(View.INVISIBLE);

        if (d==3) settime();
        d++;

    }

    void gamemessage()
    {
        AlertDialog.Builder alert = new AlertDialog.Builder(this);
        alert.setTitle("Game Over ! :");
        alert.setMessage("Bạn đã hoàn thành phần chơi của mình !"+
                "\nBạn có muốn chơi lại hay không ?"
        );
        alert.setPositiveButton("Có", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                diem=1;
                d=0;
                tim1.setVisibility(View.VISIBLE);
                tim2.setVisibility(View.VISIBLE);
                tim3.setVisibility(View.VISIBLE);
                txtscore.setText("Score: ");
                Thoigian();
            }
        });
        alert.setNegativeButton("Không", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                finish();;
            }
        });
        alert.show();
    }
    void luu()
    {
        AlertDialog.Builder alert = new AlertDialog.Builder(this);
        alert.setTitle("New High Score ! :");
        alert.setMessage("Nhập Tên: !");
        final EditText input = new EditText(this);
        LinearLayout.LayoutParams lp= new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,LinearLayout.LayoutParams.MATCH_PARENT);
        input.setLayoutParams(lp);
        alert.setView(input);

        alert.setPositiveButton("Có", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {

                ManagerHighScore high= new ManagerHighScore();
                high.setName(input.getText().toString());
                high.setScore(diem);
                boolean kt= sql.Insert(high);
                if(kt)
                {
                    Toast.makeText(GameActivity.this,"Insert success!",Toast.LENGTH_SHORT).show();
                }
                else Toast.makeText(GameActivity.this,"Insert not success!",Toast.LENGTH_SHORT).show();
                gamemessage();

            }
        });
        alert.show();
    }
}
