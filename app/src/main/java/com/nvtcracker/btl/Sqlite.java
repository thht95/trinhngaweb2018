package com.nvtcracker.btl;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by NVTCracker on 11/14/2017.
 */

public class Sqlite extends SQLiteOpenHelper {

    public  static final String DB_HIGHSCORE="DIEM";
    public static final int DB_VERSION=1;
    public static final String TB_HIGHSCORE="DIEMCAO";
    public static final String TB_TEN="TEN";
    public static final String TB_SCORE="SCORE";
    public static final String _ID="ID";
    SQLiteDatabase db;
    public Sqlite(Context context)
    {
        super(context,DB_HIGHSCORE,null,DB_VERSION);

    }

    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        String truyvan="CREATE TABLE "+ TB_HIGHSCORE+"("+_ID+" INTEGER PRIMARY KEY AUTOINCREMENT , "+ TB_TEN+" TEXT ,"+TB_SCORE+" INTEGER);";
        sqLiteDatabase.execSQL(truyvan);
    }

    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i1) {

        sqLiteDatabase.execSQL("DROP TABLE IF EXIST"+ TB_HIGHSCORE);
        onCreate(sqLiteDatabase);
    }
    public Boolean Insert(ManagerHighScore high)
    {

        db=getWritableDatabase();
        ContentValues contentValues= new ContentValues();
        contentValues.put(TB_TEN,high.getName().toString());
        contentValues.put(TB_SCORE,String.valueOf(high.getScore()));
        long kt=db.insert(TB_HIGHSCORE,null,contentValues);
        db.close();
        if (kt!=0)
        {

            return true;
        }
        else return false;
    }
    public List<ManagerHighScore> ds()
    {
        List<ManagerHighScore> ds = new ArrayList<ManagerHighScore>();

        db=getWritableDatabase();
        String query="select * from "+TB_HIGHSCORE+
                "\n ORDER BY "+TB_SCORE +" DESC";
        Cursor cursor=db.rawQuery(query,null);
        cursor.moveToFirst();
        while (!cursor.isAfterLast())
        {
            ManagerHighScore hg= new ManagerHighScore();
            int id= cursor.getInt(cursor.getColumnIndex(_ID));
            String ten = cursor.getString(cursor.getColumnIndex(TB_TEN));
            int score= cursor.getInt(cursor.getColumnIndex(TB_SCORE));
           hg.setId(id);
            hg.setName(ten);
            hg.setScore(score);
            ds.add(hg);
            cursor.moveToNext();
        }
        db.close();
        return ds;
    }
}
