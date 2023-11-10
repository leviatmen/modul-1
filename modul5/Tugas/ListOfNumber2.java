package Tugas;

import java.io.*;
import java.util.Vector;

public class ListOfNumber2 {
	private Vector victor;
	private static final int size = 10;
	
	public ListOfNumber2() {
		victor = new Vector(size);
		for (int i = 0; i < size; i++)
			victor.addElement(new Integer(i));
		
			this.readList("infile.txt");
			this.writeList();
	}
	public void readList(String fileName) {
		String line = null;
		try {
			RandomAccessFile raf = new RandomAccessFile(fileName, "r");
			while ((line = raf.readLine()) != null) {
				Integer i = new Integer(Integer.parseInt(line));
				System.out.println(i);
				victor.addElement(i);
			}
		} catch(FileNotFoundException fnf) {
			System.err.println("File: " + fileName + "file tidak ditemukan");
		}catch (IOException io) {
			System.err.println(io.toString());
		}
	}
	
	public void writeList() {
		PrintWriter out = null;
		
		try {
			out = new PrintWriter(new FileWriter("outfile.txt"));
			for(int i = 0; i < victor.size(); i++)
				out.println("Value at : " + i + " = " + victor.elementAt(i));
		}catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("Array melebihi batas" + e);
			System.err.println("Caught ArrayIndexOutOfBoundsException: " + e.getMessage());
		}catch (IOException e) {
			System.err.println("Caught IOException: " + e.getMessage());
		}finally {
			if (out != null) {
				System.out.println("Closing PrintWriter");
				out.close();
			} else {
				System.out.println("PrintWriter not open");
			}
		}
	}
	public static void main(String[] args) {
		new ListOfNumber2();
	}
}

