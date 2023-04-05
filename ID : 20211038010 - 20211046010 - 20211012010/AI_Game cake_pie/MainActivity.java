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
    int maxx=0;
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
 



}