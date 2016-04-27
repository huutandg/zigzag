//
//  main.m
//  ZigZag
//
//  Created by Tan on 4/26/16.
//  Copyright © 2016 Tan. All rights reserved.
//

#import <Foundation/Foundation.h>

void zigzag(int height, int loop){ // height: chiều cao zigzag -- loop: số lượng cạnh zigzag
        
    int i,j,d;
    int width = (height-1)*loop+1;
    char array[height][width+1];
    memset(array, ' ', sizeof array);
    for(i=0; i < height; i++){
        array[i][width] = 0;
    }
    
    for(j=i=0, d=-1; i < width; i++, j += d){
        array[j][i] = '+';
        if(j == height - 1 || j == 0){
            d = -d;
        }
    }
    printf("\n");
    for(i=height-1; i>=0; i--){ // in hàng theo thứ tự ngược từ dưới lên
        printf("%s\n", array[i]);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        zigzag(5, 5);
    }
    return 0;
}