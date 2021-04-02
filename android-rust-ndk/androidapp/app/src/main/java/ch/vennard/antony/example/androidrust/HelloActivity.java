package ch.vennard.antony.example.androidrust;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class HelloActivity extends AppCompatActivity implements View.OnClickListener {




    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hello);


        System.out.println(getApplicationContext().getApplicationInfo().nativeLibraryDir);

        Button mClickButton = (Button)findViewById(R.id.btnSayHello);
        mClickButton.setOnClickListener(this);


    }

    public void onClick(View v) {
        switch (v.getId()) {
            case  R.id.btnSayHello: {

                EditText edSayHi = (EditText)findViewById(R.id.txtSayHello);

                RustGreetings g = new RustGreetings();
                String r = g.sayHello(edSayHi.getText().toString());
                ((TextView)findViewById(R.id.greetingField)).setText(r);
                break;
            }
        }
    }

    static {


        System.loadLibrary("androidlib");
    }
}
