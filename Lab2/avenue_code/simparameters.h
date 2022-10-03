
/*
 * 
 * Simulation of A Single Server Queueing System
 * 
 * Copyright (C) 2014 Terence D. Todd Hamilton, Ontario, CANADA,
 * todd@mcmaster.ca
 * 
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation; either version 3 of the License, or (at your option)
 * any later version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
 * more details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program.  If not, see <http://www.gnu.org/licenses/>.
 * 
 */

/******************************************************************************/

#ifndef _SIMPARAMETERS_H_
#define _SIMPARAMETERS_H_

/******************************************************************************/

#define PACKET_ARRIVAL_RATE 500 /* packets per second */
// #define PACKET_ARRIVAL_RATE_LIST 200 /* packets per second */
#define PACKET_LENGTH 500 /* bits */
#define LINK_BIT_RATE 500e3 /* bits per second */
#define RUNLENGTH 10e6 /* packets */

/* Comma separated list of random seeds to run. */
#define RANDOM_SEED_LIST 400185326, 400114166, 400189670, 400189671, 400189672, 400189673, 400189674, 400189675, 400189676, 400189677
// , 400189678, 400189679, 400189680, 400189681, 400189682, 400189683, 400189684, 400189685, 400189686, 400189687, 400189688, 400189689, 400189690, 400189691, 400189692, 400189693, 400189694, 400189695, 400189696, 400189697, 400189698, 400189699, 400189700, 400189701, 400189702, 400189703, 400189704, 400189705, 400189706, 400189707, 400189708, 400189709, 400189710, 400189711, 400189712, 400189713, 400189714, 400189715, 400189716, 400189717, 400189718, 400189719
// #define RANDOM_SEED_LIST 400185326

#define PACKET_XMT_TIME ((double) PACKET_LENGTH/LINK_BIT_RATE)
#define BLIPRATE (RUNLENGTH/1000)

/******************************************************************************/

#endif /* simparameters.h */



