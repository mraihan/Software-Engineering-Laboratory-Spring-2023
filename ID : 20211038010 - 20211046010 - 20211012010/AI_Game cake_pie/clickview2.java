package com.example.game;

import androidx.appcompat.app.AppCompatActivity;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    Button tb1,tb2,tb3,tb4,tb5,tb6,tb7,tb8,tb9,tb10,tb11,tb12,tp,tossb,rst;
    TextView tv1,tv2,result_b,timer;

    int n,x,xx=0;
    int max=100;
    int maxx=20;
    int max_i=12;
    int[] ar=new int[55];
    int[] dp=new int[55];
    int[][] bdp=new int[60][2];
    int[][] adp=new int[60][2];
    int a=0;
    int b=3;
    public int counter=60;
    int player=0, ai=0, l=-1;
    int t=1;

    int min=1;
    int min_i;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getSupportActionBar().setTitle(" Cake pie");
        tb1=(Button)findViewById(R.id.t1);
        tb2=(Button)findViewById(R.id.t2);
        tb3=(Button)findViewById(R.id.t3);
        tb4=(Button)findViewById(R.id.t4);
        tb5=(Button)findViewById(R.id.t5);
        tb6=(Button)findViewById(R.id.t6);
        tb7=(Button)findViewById(R.id.t7);
        tb8=(Button)findViewById(R.id.t8);
        tb9=(Button)findViewById(R.id.t9);
        tb10=(Button)findViewById(R.id.t10);
        tb11=(Button)findViewById(R.id.t11);
        tb12=(Button)findViewById(R.id.t12);
        rst=(Button)findViewById(R.id.restart);
        tossb=(Button)findViewById(R.id.tossid);
        tv1=(TextView)findViewById(R.id.tv1);
        tv2=(TextView)findViewById(R.id.tv2);
        timer=(TextView)findViewById(R.id.timer);
        tp=(Button)findViewById(R.id.t_pass);
        result_b=(TextView)findViewById(R.id.resultid);

        rst.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //restart(MainActivity.this);
            }
        });

        tossb.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                int toss = (int)(Math.random()*(b-a+1)+a);
                new CountDownTimer(60000, 1000){
                    public void onTick(long millisUntilFinished){
                        timer.setText("Time remaining "+ String.valueOf(counter)+"");
                        counter--;
                    }
                    public  void onFinish(){
                        timer.setText("Time Over !!Be Fast Gamer ");
                        result_b.setText(" AI win ");
                    }
                }.start();
                if(toss==0|| toss==1 || toss==2){
                    Toast.makeText(MainActivity.this, "AI has won the toss", Toast.LENGTH_LONG).show();
                    t=0;
                    action_of_ai();
                }

                if(toss==3){
                    Toast.makeText(MainActivity.this, "you have won the toss", Toast.LENGTH_LONG).show();
                    Toast.makeText(MainActivity.this, "Its your turn", Toast.LENGTH_LONG).show();

                }

            }
        });



        tb1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                x=1;

                action_of_click();
                t=0;
            }
        });
        tb2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                x=2;

                action_of_click();
                t=0;
            }
        });
        tb3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                x=3;

                action_of_click();
                t=0;
            }
        });
        tb4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                x=4;

                action_of_click();
                t=0;
            }
        });
        tb5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                x=5;

                action_of_click();
                t=0;
            }
        });
        tb6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                x=6;

                action_of_click();
                t=0;
            }
        });

        tb7.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                x=7;

                action_of_click();
                t=0;
            }
        });
        tb8.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                x=8;

                action_of_click();
                t=0;
            }
        });

    public void setcolor(){
        if(ar[0]==0){
            tb1.setBackgroundColor(0xFFFF0000);
        }
        if(ar[1]==0){
            tb2.setBackgroundColor(0xFFFF0000);
        }
        if(ar[2]==0){
            tb3.setBackgroundColor(0xFFFF0000);
        }
        if(ar[3]==0){
            tb4.setBackgroundColor(0xFFFF0000);
        }
        if(ar[4]==0){
            tb5.setBackgroundColor(0xFFFF0000);
        }
        if(ar[5]==0){
            tb6.setBackgroundColor(0xFFFF0000);
        }
        if(ar[6]==0){
            tb7.setBackgroundColor(0xFFFF0000);
        }
        if(ar[7]==0){
            tb8.setBackgroundColor(0xFFFF0000);
        }
        if(ar[8]==0){
            tb9.setBackgroundColor(0xFFFF0000);
        }
        if(ar[9]==0){
            tb10.setBackgroundColor(0xFFFF0000);
        }
        if(ar[10]==0){
            tb11.setBackgroundColor(0xFFFF0000);
        }
        if(ar[11]==0){
            tb12.setBackgroundColor(0xFFFF0000);
        }


    }


}