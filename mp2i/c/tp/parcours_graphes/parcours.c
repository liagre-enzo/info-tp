#include "../../libraries.h"

struct graphe_s {
    int nb_sommets;
    int liste[20][20]; // sentinelles pour marquer la fin des listes
};
typedef struct graphe_s graphe;

void explorer(int s, graphe G, int* vus){
    if (!vus[s]){
        vus[s] = 1;
        printf("%d", s);
        int i = 0;
        while (G.liste[s][i] != -1){
            explorer(G.liste[s][i], G, vus);
            i++;
        }
    }
}

void parcours_profondeur(graphe G, int dep){
    int vus[9] = {0, 0, 0, 0, 0, 0, 0, 0, 0,};
    explorer(dep, G, vus);
    printf("\n");
}

int main(){
    graphe gno = {9, {
        {1, 4, 5, -1},
        {0, 3, -1},
        {4, 5, 6, -1},
        {1, 5, -1},
        {0, 2, 5, 8, -1},
        {0, 2, 3, 4, 6, -1},
        {2, 5,7, -1},
        {6, -1},
        {4, -1}
    }};
    graphe go = {9, {
        {1, 5, -1},
        {0, 3, -1},
        {4, 5, -1},
        {-1},
        {0, 8, -1},
        {2, 3, 4, 6, -1},
        {2, -1},
        {6, -1},
        {-1}
    }};
}