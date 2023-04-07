package com.example.health_assistant_app;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.HashMap;

public class DoctorDetailsActivity extends AppCompatActivity {

    private String[][] doctor_details1 =
            {
                    {"Doctor Name:Prof. Dr. Sheikh Amir Hossain", "Hospital Address : Khulna Sadar", "Exp: 5 years", "Mobile No: +8801711298607", "600"},
                    {"Doctor Name:Prof. Dr. Minhazul Alam", "Hospital Address :  46, Babu Khan Road, West Side of Pioneer College, Khulna", "Exp: 5 years", "Mobile No: +8801973127423", "600"},
                    {"Doctor Name:Prof. Dr. Dip Kumar Dash", "Hospital Address : 78, Khan Jahan Ali Road, Tutpara Koborkhana, Khulna", "Exp: 7 years", "Mobile No: +8801757992244", "800"},
                    {"Doctor Name:Prof. Dr. Md. Shafiquzzaman Siddiqui", "Hospital Address : C3, KDA Avenue, Khulna", "Exp: 4 years", "Mobile No: +8801873184045", "500"},
                    {"Doctor Name:Prof. Dr. Pritish Tarafder", "Hospital Address: 25/26, KDA Avenue, Moilapota Square, Khulna Sadar, Khulna", "Exp: 7 years", "Mobile No: +8801999099099", "800"}
            };
    private String[][] doctor_details2 =
            {
                    {"Doctor Name:Prof. Dr. Amir Hossain", "Hospital Address : Khulna Sadar", "Exp: 5 years", "Mobile No: +8801711298607", "600"},
                    {"Doctor Name:Prof. Dr. Mohua Roy", "Hospital Address :  46, Babu Khan Road, West Side of Pioneer College, Khulna", "Exp: 5 years", "Mobile No: +8801973127423", "600"},
                    {"Doctor Name:Prof. Dr. Kumar Dash", "Hospital Address : 78, Khan Jahan Ali Road, Tutpara Koborkhana, Khulna", "Exp: 7 years", "Mobile No: +8801757992244", "800"},
                    {"Doctor Name:Prof. Dr. Md.Abu Siddiqui", "Hospital Address : C3, KDA Avenue, Khulna", "Exp: 4 years", "Mobile No: +8801873184045", "500"},
                    {"Doctor Name:Prof. Dr. Akash Tarafder", "Hospital Address: 25/26, KDA Avenue, Moilapota Square, Khulna Sadar, Khulna", "Exp: 7 years", "Mobile No: +8801999099099", "800"}
            };
    private String[][] doctor_details3 =
            {
                    {"Doctor Name:Prof. Dr. Saddam Hossain", "Hospital Address : Khulna Sadar", "Exp: 5 years", "Mobile No: +8801711298607", "600"},
                    {"Doctor Name:Prof. Dr. Minhazul Khan", "Hospital Address :  46, Babu Khan Road, West Side of Pioneer College, Khulna", "Exp: 5 years", "Mobile No: +8801973127423", "600"},
                    {"Doctor Name:Prof. Dr. Protom Das", "Hospital Address : 78, Khan Jahan Ali Road, Tutpara Koborkhana, Khulna", "Exp: 7 years", "Mobile No: +8801757992244", "800"},
                    {"Doctor Name:Prof. Dr. Sanjida Islam", "Hospital Address : C3, KDA Avenue, Khulna", "Exp: 4 years", "Mobile No: +8801873184045", "500"},
                    {"Doctor Name:Prof. Dr. Kotha Das", "Hospital Address: 25/26, KDA Avenue, Moilapota Square, Khulna Sadar, Khulna", "Exp: 7 years", "Mobile No: +8801999099099", "800"}
            };
    private String[][] doctor_details4 =
            {
                    {"Doctor Name:Prof. Dr. Ahad Islam", "Hospital Address : Khulna Sadar", "Exp: 5 years", "Mobile No: +8801711298607", "600"},
                    {"Doctor Name:Prof. Dr. Hadiur Siam", "Hospital Address :  46, Babu Khan Road, West Side of Pioneer College, Khulna", "Exp: 5 years", "Mobile No: +8801973127423", "600"},
                    {"Doctor Name:Prof. Dr. Dipa Mondol", "Hospital Address : 78, Khan Jahan Ali Road, Tutpara Koborkhana, Khulna", "Exp: 7 years", "Mobile No: +8801757992244", "800"},
                    {"Doctor Name:Prof. Dr. Md. Shafiquzzaman ", "Hospital Address : C3, KDA Avenue, Khulna", "Exp: 4 years", "Mobile No: +8801873184045", "500"},
                    {"Doctor Name:Prof. Dr. Pritish Kumar", "Hospital Address: 25/26, KDA Avenue, Moilapota Square, Khulna Sadar, Khulna", "Exp: 7 years", "Mobile No: +8801999099099", "800"}
            };
    private String[][] doctor_details5 =
            {
                    {"Doctor Name:Prof. Dr. Sourov Roy", "Hospital Address : Khulna Sadar", "Exp: 5 years", "Mobile No: +8801711298607", "600"},
                    {"Doctor Name:Prof. Dr. Samina Khalid", "Hospital Address :  46, Babu Khan Road, West Side of Pioneer College, Khulna", "Exp:15 years", "Mobile No: +8801973127423", "800"},
                    {"Doctor Name:Prof. Dr. Dip Kumar Dash", "Hospital Address : 78, Khan Jahan Ali Road, Tutpara Koborkhana, Khulna", "Exp: 7 years", "Mobile No: +8801757992244", "800"},
                    {"Doctor Name:Prof. Dr. Md. Shafiquzzaman Siddiqui", "Hospital Address : C3, KDA Avenue, Khulna", "Exp: 4 years", "Mobile No: +8801873184045", "500"},
                    {"Doctor Name:Prof. Dr. Pritish Tarafder", "Hospital Address: 25/26, KDA Avenue, Moilapota Square, Khulna Sadar, Khulna", "Exp: 7 years", "Mobile No: +8801999099099", "800"}
            };
    TextView tv;
    Button btn;
    String[][] doctor_details = {};
    HashMap<String, String> item;
    ArrayList list;
    SimpleAdapter sa;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_doctor_details);

        tv = findViewById(R.id.textView_logo6);
        btn = findViewById(R.id.buttonCartBack);

        Intent it = getIntent();
        String title = it.getStringExtra("title");
        tv.setText(title);

        if (title.compareTo("Family Physicians") == 0)
            doctor_details = doctor_details1;
        else if (title.compareTo("Dietitian") == 0)
            doctor_details = doctor_details2;
        else if (title.compareTo("Dentist") == 0)
            doctor_details = doctor_details3;
        else if (title.compareTo("surgeon") == 0)
            doctor_details = doctor_details4;
        else
            doctor_details = doctor_details5;


        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(DoctorDetailsActivity.this, FindDoctorActivity.class));

            }
        });
        list = new ArrayList();
        for (int i = 0; i < doctor_details.length; i++) {
            item = new HashMap<String, String>();
            item.put("line1", doctor_details[i][0]);
            item.put("line2", doctor_details[i][1]);
            item.put("line3", doctor_details[i][2]);
            item.put("line4", doctor_details[i][3]);
            item.put("line5", "Cons Fees:" + doctor_details[i][4] + "/-");
            list.add(item);


        }
        sa = new SimpleAdapter(this, list,
                R.layout.multi_lines,
                new String[]{"line1", "line2", "line3", "line4", "line5"},
                new int[]{R.id.line_a, R.id.line_b, R.id.line_c, R.id.line_d, R.id.line_e}
        );
        ListView lst = findViewById(R.id.listViewCart);
        lst.setAdapter(sa);

        lst.setOnItemClickListener(new AdapterView.OnItemClickListener(){
            @Override
            public void onItemClick(AdapterView<?> adapterView,View view,int i,long l){
                Intent it= new Intent(DoctorDetailsActivity.this,BookApointmentActivity.class);
                it.putExtra("text1",title);
                it.putExtra("text2",doctor_details[i][0]);
                it.putExtra("text3",doctor_details[i][1]);
                it.putExtra("text4",doctor_details[i][3]);
                it.putExtra("text5",doctor_details[i][4]);
                startActivity(it);


            }
    });
}
}


