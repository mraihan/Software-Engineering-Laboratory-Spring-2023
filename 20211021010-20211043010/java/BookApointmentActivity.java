package com.example.health_assistant_app;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;

import java.time.Instant;

public class BookApointmentActivity extends AppCompatActivity {

      EditText ed1,ed2,ed3,ed4;
      TextView tv;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_book_apointment);

        tv = findViewById(R.id.textViewAppTitle);
        ed1 = findViewById(R.id.editTextAppFullName);
        ed2= findViewById(R.id.editTextAppAddress);
        ed3= findViewById(R.id.editTextAppContactNumber);
        ed2= findViewById(R.id.editTextAppFees);

          ed1.setKeyListener(null);
        ed2.setKeyListener(null);
        ed3.setKeyListener(null);
        ed4.setKeyListener(null);

        Intent it = getIntent();
        String title = it.getStringExtra("text1");
        String fullname = it.getStringExtra("text2");

        String address = it.getStringExtra("text3");

        String contact = it.getStringExtra("text4");

        String fees = it.getStringExtra("text5");

        tv.setText(title);
        ed1.setText(fullname);
        ed2.setText(address);
        ed3.setText(contact);
        ed4.setText("Cons Fee:"+fees+"/-");

    }

}