package com.example.loklagbe;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;

import java.util.Objects;

public class ChooseAccount extends AppCompatActivity implements View.OnClickListener{

    private ImageView User,Provider;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_choose_account);

        Objects.requireNonNull(getSupportActionBar()).hide();

        User=findViewById(R.id.profile_image);
        Provider=findViewById(R.id.profile_image1);

        User.setOnClickListener(this);
        Provider.setOnClickListener(this);


    }
    @Override
    public void onClick(View v){
        if(R.id.profile_image == v.getId()){
            Toast.makeText(getApplicationContext(),
                    "User",
                    Toast.LENGTH_LONG)
                    .show();

            Intent intent=new Intent(ChooseAccount.this,SignInUser.class);
            startActivity(intent);
            finish();


        }else if(R.id.profile_image1 == v.getId()){
            Toast.makeText(getApplicationContext(),
                    "Under developing UI",
                    Toast.LENGTH_LONG)
                    .show();
        }

    }

}