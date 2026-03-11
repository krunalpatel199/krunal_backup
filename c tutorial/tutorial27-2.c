int main(int argc, char const *argv[])
{
    int arr[] = {1, 2, 3, 4, 5, 6, 7};

    printf("value of position 4 of array is %d\n", arr[3]);
    //printf("the address of first element of array is %d\n", &arr[0]);
    printf("the address of first element of array is %d\n", arr);
    //printf("the address of second element of array is %d\n", &arr[1]);
    printf("the address of second element of array is %d\n", arr+1);


    //printf("the value of address of first element of array is %d\n", *(&arr[0]));
    printf("the value of address of first element of array is %d\n", *(arr));
    //printf("the value of address of second element of array is %d\n", *(&arr[1]));
    printf("the value of address of second element of array is %d\n", *(arr+1));

    return 0;
}
