package com.kovalenko.sorting;

import java.util.Arrays;
import java.util.Random;

public class SortingMethods {

    public static String selectionSort(String numbers) {

        int[] arr = Arrays.stream(numbers.split(" ")).map(String::trim).mapToInt(Integer::parseInt).toArray();
        long timeout= System.currentTimeMillis();

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

        timeout = System.currentTimeMillis() - timeout;
        String result = Arrays.toString(arr) + " Selection sort. Duration - " + timeout + "ms";
        return result;
    }

    public static String bubbleSort(String numbers) {

        int[] arr = Arrays.stream(numbers.split(" ")).map(String::trim).mapToInt(Integer::parseInt).toArray();
        long timeout= System.currentTimeMillis();

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

        timeout = System.currentTimeMillis() - timeout;
        String result = Arrays.toString(arr) + " Bubble sort. Duration - " + timeout + "ms";
        return result;
    }

    public static String insertionSort(String numbers) {

        int[] arr = Arrays.stream(numbers.split(" ")).map(String::trim).mapToInt(Integer::parseInt).toArray();
        long timeout= System.currentTimeMillis();

        for (int i = 1; i < arr.length; i++) {
            for(int j = i ; j > 0 ; j--){
                if(arr[j] < arr[j-1]){
                    int tmp = arr[j];
                    arr[j] = arr[j-1];
                    arr[j-1] = tmp;
                }
            }
        }

        timeout = System.currentTimeMillis() - timeout;
        String result = Arrays.toString(arr) + " Insertion sort. Duration - " + timeout + "ms";
        return result;
    }

    public static String quickSort(String numbers) {

        int[] arr = Arrays.stream(numbers.split(" ")).map(String::trim).mapToInt(Integer::parseInt).toArray();
        long timeout= System.currentTimeMillis();

        qSort(arr, 0, arr.length-1);

        timeout = System.currentTimeMillis() - timeout;
        String result = Arrays.toString(arr) + " Quick sort. Duration - " + timeout + "ms";
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

    public static void qSort(int arr[], int left, int right) {
        int index = partition(arr, left, right);
        if (left < index - 1)
            qSort(arr, left, index - 1);
        if (index < right)
            qSort(arr, index, right);
    }

    public static String bogoSort(String numbers) {

        int[] arr = Arrays.stream(numbers.split(" ")).map(String::trim).mapToInt(Integer::parseInt).toArray();
        long timeout= System.currentTimeMillis();

        while(!inOrder(arr)) shuffle(arr);

        timeout = System.currentTimeMillis() - timeout;
        String result = Arrays.toString(arr) + " Bogo sort. Duration - " + timeout + " ms";
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
}
