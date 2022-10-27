
/*
 *
 * Call Blocking in Circuit Switched Networks
 *
 * Copyright (C) 2014 Terence D. Todd
 * Hamilton, Ontario, CANADA
 * todd@mcmaster.ca
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see
 * <http://www.gnu.org/licenses/>.
 *
 */

/*******************************************************************************/

#ifndef _SIMPARAMETERS_H_
#define _SIMPARAMETERS_H_

/*******************************************************************************/

#define Call_ARRIVALRATE 3   /* calls/minute */
// #define ARRAY_OF_ARRIVAL_RATES 1,2,3,4,5,6,7,8,9,10
#define ARRAY_OF_ARRIVAL_RATES 2
#define MEAN_CALL_DURATION 3 /* minutes */
#define MEAN_HANG_UP_DURATION 10 /* minutes */
#define ARRAY_OF_HANG_UP_DURATIONS 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60
// #define ARRAY_OF_HANG_UP_DURATIONS 1
#define RUNLENGTH 5e6 /* number of successful calls */
#define BLIPRATE 1e3
#define NUMBER_OF_CHANNELS 1
// #define ARRAY_OF_CHANNELS 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
#define ARRAY_OF_CHANNELS 5

/* Comma separated list of random seeds to run. */
#define RANDOM_SEED_LIST 400185326
// , 400185327, 400185328

/*******************************************************************************/

#endif /* simparameters.h */




