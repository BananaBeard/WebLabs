package com.kovalenko.sorting;

import java.util.Arrays;
import java.util.Random;

public class SortingMethods {

    public static String selectionSort(int[] arr) {

        long timeout= System.nanoTime();

        for (int min=0;min<arr.length-1;min++) {
            int least = min;
            for (int j=min+1;j<arr.length;j++) {
                if(arr[j] < arr[least]) {
                    least = j;
                }
            }
            int tmp = arr[min];
            arr[min] = arr[least];
            arr[least] = tmp;
        }

        timeout = System.nanoTime() - timeout;
        String result = Arrays.toString(arr) + " Selection sort. Duration - " + timeout + "ns";
        return result;
    }

    public static String bubbleSort(int[] arr) {

        long timeout= System.nanoTime();

        for (int i = 0; i < arr.length - 1; i++) {
            boolean swapped = false;
            for (int j = 0; j < arr.length - i - 1; j++) {
                if (((Integer)arr[j]).compareTo(arr[j + 1]) > 0) {
                    int tmp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = tmp;
                    swapped = true;
                }
            }
            if(!swapped)
                break;
        }

        timeout = System.nanoTime() - timeout;
        String result = Arrays.toString(arr) + " Bubble sort. Duration - " + timeout + "ns";
        return result;
    }

    public static String insertionSort(int[] arr) {

        long timeout= System.nanoTime();

        for (int i = 1; i < arr.length; i++) {
            for(int j = i ; j > 0 ; j--){
                if(arr[j] < arr[j-1]){
                    int tmp = arr[j];
                    arr[j] = arr[j-1];
                    arr[j-1] = tmp;
                }
            }
        }

        timeout = System.nanoTime() - timeout;
        String result = Arrays.toString(arr) + " Insertion sort. Duration - " + timeout + "ns";
        return result;
    }

    public static String quickSort(int[] arr, int left, int right) {

        long timeout= System.nanoTime();

        int index = partition(arr, left, right);
        if (left < index - 1)
            quickSort(arr, left, index - 1);
        if (index < right)
            quickSort(arr, index, right);

        timeout = System.nanoTime() - timeout;
        String result = Arrays.toString(arr) + " Quick sort. Duration - " + timeout + "ns";
        return result;
    }


    public static int partition(int arr[], int left, int right) {
        int i = left, j = right;
        int tmp;
        int pivot = arr[(left + right) / 2];

        while (i <= j) {
            while (arr[i] < pivot)
                i++;
            while (arr[j] > pivot)
                j--;
            if (i <= j) {
                tmp = arr[i];
                arr[i] = arr[j];
                arr[j] = tmp;
                i++;
                j--;
            }
        }

        return i;
    }

    public static String bogoSort(int[] arr) {

        long timeout= System.nanoTime();

        while(!inOrder(arr)) shuffle(arr);

        timeout = System.nanoTime() - timeout;
        String result = Arrays.toString(arr) + " Bogo sort. Duration - " + timeout + " ns";
        return result;
    }

    public static String bucketSort(int[] arr, int maxVal) {

        long timeout = System.nanoTime();
        int [] bucket=new int[maxVal+1];

        for (int i=0; i<bucket.length; i++) {
            bucket[i]=0;
        }

        for (int i=0; i<arr.length; i++) {
            bucket[arr[i]]++;
        }

        int outPos=0;
        for (int i=0; i<bucket.length; i++) {
            for (int j=0; j<bucket[i]; j++) {
                arr[outPos++]=i;
            }
        }

        timeout = System.nanoTime() - timeout;
        String result = Arrays.toString(arr) + " Bucket sort. Duration - " + timeout + " ns";

        return result;
    }

    public static void shuffle(int[] n) {
        Random random = new Random();
        for (int i = 0; i < n.length; i++) {
            int swapPosition = random.nextInt(n.length);
            int temp = n[i];
            n[i] = n[swapPosition];
            n[swapPosition] = temp;
        }
    }

    public static boolean inOrder(int[] n) {
        int length = n.length - 1;
        for (int i = 0; i < length; i++) {
            if (n[i] > n[i+1]) return false;
        }
        return true;
    }

    public static int getMax(int[] arr) {
        int max = arr[0];

        for (int i : arr) {
            if (i > max) max = i;
        }

        return max;
    }
}
