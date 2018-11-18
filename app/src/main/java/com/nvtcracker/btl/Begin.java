package com.nvtcracker.btl;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.TextView;

public class Begin extends AppCompatActivity {
    ProgressBar load;
    int k=10;
    TextView txt;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_begin);
        load= (ProgressBar) findViewById(R.id.load);
        txt= (TextView) findViewById(R.id.txt);
        final Handler handler = new Handler()
        {
            @Override
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                load.setProgress(msg.what +25);
            }
        };
        Thread thread= new Thread(new Runnable() {
            @Override
            public void run() {
                while (k<100)
                {

                    try {
                        Thread.sleep(1000);
                        k = load.getProgress();
                        handler.sendEmptyMessage(k);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                Intent intent= new Intent(Begin.this,ChonGame.class);
                startActivity(intent);
            }
        });
        thread.start();

    }

    @Override
    protected void onPause() {
        super.onPause();
        finish();
    }
}
