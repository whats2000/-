#include <stdio.h>

int main(int argc, char* argv) {
    int radius = 0;  // number of circle radius
    int i = 0, j = 0;

    // input radius
    scanf("%d", &radius);

    // draw circle
    // 由i, j表達座標，藉由正負半徑確認圓心，再利用畢氏定理判定該位置是否在圓內
    for (i = -radius; i <= radius; i++) {
        for (j = -radius; j <= radius; j++)
            if (i * i + j * j <= radius * radius)
                printf("*");
            else
                printf(" ");

        printf("\n");
    }
}