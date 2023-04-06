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
        tb9.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                x=9;

                action_of_click();
                t=0;
            }
        });
        tb10.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                x=10;
                t=0;
                action_of_click();
                t=0;
            }
        });
        tb11.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                x=11;

                action_of_click();
                t=0;
            }
        });
        tb12.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                x=12;
                action_of_click();
                t=0;
            }
        });
        tp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                t=0;
                action_of_ai();
            }
        });





        n=12;



        for(int i=n-1; i>=0; i--)
        {
            dp[i]=ar[i]+dp[i+1];
        }

        // com(0);

        //Toast.makeText(MainActivity.this, "Its your turn", Toast.LENGTH_LONG).show();
//
//        while ( x!=0 && l+1<=n-1){
//
//
//            Toast.makeText(MainActivity.this, "pressed"+x, Toast.LENGTH_LONG).show();
//            xx=0;
//
//        }





    }
    public static void restart(Context context){
//        Intent mStartActivity = new Intent(context, MainActivity.class);
//        int mPendingIntentId = 123456;
//        PendingIntent mPendingIntent = PendingIntent.getActivity(context, mPendingIntentId,    mStartActivity, PendingIntent.FLAG_CANCEL_CURRENT);
//       // AlarmManager mgr = (AlarmManager)context.getSystemService(Context.ALARM_SERVICE);
//        //mgr.set(AlarmManager.RTC, System.currentTimeMillis() + 100, mPendingIntent);
//        System.exit(0);
        PackageManager packageManager = context.getPackageManager();
        Intent intent = packageManager.getLaunchIntentForPackage(context.getPackageName());
        ComponentName componentName = intent.getComponent();
        Intent mainIntent = Intent.makeRestartActivityTask(componentName);
        context.startActivity(mainIntent);
        Runtime.getRuntime().exit(0);
    }
    public int com(int i){

        if (i==n) return 0;
        if (bdp[i][0]!=-1) return bdp[i][0];
        int a=ar[i]+dp[i+1]-player_c(i+1);
        int b=com(i+1);

        bdp[i][0]= Math.max(a,b);

        if(a>b) bdp[i][1]=i;
        else bdp[i][1]=bdp[i+1][1];
        return bdp[i][0];
    }
    public int player_c(int i){                   //show message method
        if (i==n) return 0;
        if (adp[i][0]!=-1) return adp[i][0];
        int a=ar[i]+dp[i+1]-com(i+1);
        int b=player_c(i+1);
        if(a>b) adp[i][1]=i;
        else adp[i][1]=adp[i+1][1];
        adp[i][0]= Math.max(a,b);
        return adp[i][0];
    }
    public void init(){
        // Toast.makeText(MainActivity.this, "init called", Toast.LENGTH_LONG).show();
        for(int i=0; i< 60; i++)
        {
            bdp[i][0]=-1;
            adp[i][0]=-1;
            bdp[i][1]=-1;
            adp[i][1]=-1;


        }
    }

   


        //l=bdp[x+1][1];

        //  l=(int)(Math.random()*(max_i-min_i+1)+min_i);
        //chosee of ai


    }
    public int check_game_end(){
        int sum=0;
        for(int i=0; i<12; i++)
        {
            sum=sum+ar[i];
        }
        return sum;

    }

    public  void  action_of_ai(){
        int c=ai_choose();
        int tbl=c+1;
        // Toast.makeText(MainActivity.this, "Ai choose"+tbl, Toast.LENGTH_LONG).show();

        //point of player
        for(int i=0; i<c; i++)
        {
            player+=ar[i];
        }
        //point of ai
        ai=ai+ar[c];

        // Toast.makeText(MainActivity.this, "PLAYER POINT "+player, Toast.LENGTH_LONG).show();
        tv1.setText("" + "Player point  " + player + "");
        // Toast.makeText(MainActivity.this, "AI point "+ai, Toast.LENGTH_LONG).show();
        tv2.setText("" + "AI point  " + ai + "");
        //clearing

        for(int i=0; i<=c; i++)
        {
            ar[i]=0;
            //tb1.setBackgroundColor(getResources().getColor(R.color.red));

        }
        setcolor();
        t=1;
        int g_state=  check_game_end();
        if(g_state==0){
            game_result();
        }




    }
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
    @Override
    protected void onStart() {


        super.onStart();
        init();
        int cake_pics = (int)(Math.random()*(maxx-min+1)+min);
        ar[0]=cake_pics;

        for(int i=1; i<n; i++) {
            cake_pics = (int)(Math.random()*(max-min+1)+min);
            ar[i]=cake_pics;

        }

        tb1.setText("" + "" + ar[0] + "");
        tb2.setText("" + "" + ar[1] + "");
        tb3.setText("" + "" + ar[2] + "");
        tb4.setText("" + "" + ar[3] + "");
        tb5.setText("" + "" + ar[4] + "");
        tb6.setText("" + "" + ar[5] + "");
        tb7.setText("" + "" + ar[6] + "");
        tb8.setText("" + "" + ar[7] + "");
        tb9.setText("" + "" + ar[8] + "");
        tb10.setText("" + "" + ar[9] + "");
        tb11.setText("" + "" + ar[10] + "");
        tb12.setText("" + "" + ar[11] + "");


    }


}