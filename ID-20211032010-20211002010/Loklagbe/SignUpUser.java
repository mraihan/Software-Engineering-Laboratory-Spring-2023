package com.example.loklagbe;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import java.util.Objects;

public class SignUpUser extends AppCompatActivity implements View.OnClickListener{

    public TextView SignIn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sign_up_user);

        Objects.requireNonNull(getSupportActionBar()).hide();

        SignIn=findViewById(R.id.textView4);

        SignIn.setOnClickListener(this);
    }

    @Override
    public void onClick(View view) {
        if(view.getId()==R.id.textView4){
            Toast.makeText(getApplicationContext(),
                    "SIGN IN",
                    Toast.LENGTH_LONG)
                    .show();

            Intent intent=new Intent(SignUpUser.this,SignInUser.class);
            intent.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
            startActivity(intent);
            finish();
        }
    }
}