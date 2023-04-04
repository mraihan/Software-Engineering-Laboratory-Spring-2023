package com.example.loklagbe;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import java.util.Objects;

public class SignInUser extends AppCompatActivity implements View.OnClickListener {

    public TextView SignIn;
    public Button SignButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sign_in_user);

        Objects.requireNonNull(getSupportActionBar()).hide();

        SignIn=findViewById(R.id.textView4);
        SignButton=findViewById(R.id.button);

        SignIn.setOnClickListener(this);
        SignButton.setOnClickListener(this);
    }

    @Override
    public void onClick(View view) {
        if(view.getId() == R.id.textView4){
            Toast.makeText(getApplicationContext(),
                    "SIGN UP",
                    Toast.LENGTH_LONG)
                    .show();

            Intent intent=new Intent(SignInUser.this,SignUpUser.class);
            intent.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
            startActivity(intent);
            finish();
        }
        else if(view.getId()==R.id.button){
            Toast.makeText(getApplicationContext(),
                    "Home",
                    Toast.LENGTH_LONG)
                    .show();

            Intent intent=new Intent(SignInUser.this,HomeForUser.class);
            intent.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
            startActivity(intent);
            finish();
        }
    }

    @Override
    public void onBackPressed() {

        Intent new_intent = new Intent(this, SignInUser.class);

        this.startActivity(new_intent);

    }
}