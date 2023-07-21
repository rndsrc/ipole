#ifndef MODIFIED_METRICS_H
#define MODIFIED_METRICS_H

#include "decs.h"
extern double a;
extern double Rh;

void gcov_EdGB_ks(double r, double th, double gcov[NDIM][NDIM]);
void gcov_DCS_ks(double r, double th, double gcov[NDIM][NDIM]);
double get_EdGB_Event_Horizon(double th);
double get_dCS_Event_Horizon(double th);
double event_horizon(double th);
#endif