/*
 * 
 * Simulation_Run of A Single Server Queueing System
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

#include <stdio.h>
#include "simparameters.h"
#include "main.h"
#include "output.h"

/******************************************************************************/

/*
 * This function outputs a progress message to the screen to indicate this are
 * working.
 */

void
output_progress_msg_to_screen(Simulation_Run_Ptr simulation_run)
{
  double percentage_done;
  Simulation_Run_Data_Ptr data;

  data = (Simulation_Run_Data_Ptr) simulation_run_data(simulation_run);

  data->blip_counter++;
  long total_packets_processed = data->number_of_packets_processed_1 + data->number_of_packets_processed_2 + data->number_of_packets_processed_3;
  if((data->blip_counter >= BLIPRATE)
     ||
     (total_packets_processed >= RUNLENGTH)) {

    data->blip_counter = 0;

    percentage_done =
      100 * (double) total_packets_processed/RUNLENGTH;

    printf("%3.0f%% ", percentage_done);

    printf("Successfully Xmtted Pkts  = %ld (Arrived Pkts = %ld) \r", 
	   total_packets_processed, (data->arrival_count_1 + data->arrival_count_2 + data->arrival_count_3));

    fflush(stdout);
  }

}

/*
 * When a simulation_run run is completed, this function outputs various
 * collected statistics on the screen.
 */

void
output_results(Simulation_Run_Ptr simulation_run)
{
  double xmtted_fraction_1, xmtted_fraction_2, xmtted_fraction_3;
  Simulation_Run_Data_Ptr data;

  data = (Simulation_Run_Data_Ptr) simulation_run_data(simulation_run);

  printf("\n");
  printf("Random Seed = %d \n", data->random_seed);
  printf("Packet arrival count 1 = %ld \n", data->arrival_count_1);
  printf("Packet arrival count 2 = %ld \n", data->arrival_count_2);
  printf("Packet arrival count 3 = %ld \n", data->arrival_count_3);

  xmtted_fraction_1 = (double) data->number_of_packets_processed_1 / data->arrival_count_1;
  xmtted_fraction_2 = (double) data->number_of_packets_processed_2 / data->arrival_count_2;
  xmtted_fraction_3 = (double) data->number_of_packets_processed_3 / data->arrival_count_3;


  printf("Arrival rate = %.3f packets/second \n", (double) PACKET_ARRIVAL_RATE);
  printf("Transmitted packet count 1  = %ld (Service Fraction = %.5f)\n", data->number_of_packets_processed_1, xmtted_fraction_1);

  printf("Arrival rate = %.3f packets/second \n", (double) PACKET_ARRIVAL_RATE_2);
  printf("Transmitted packet count 2  = %ld (Service Fraction = %.5f)\n", data->number_of_packets_processed_2, xmtted_fraction_2);
  printf("Transmitted packet count 3  = %ld (Service Fraction = %.5f)\n", data->number_of_packets_processed_3, xmtted_fraction_3);
  
  printf("Mean Delay 1 (msec) = %.2f \n", 1e3*data->accumulated_delay_1/data->number_of_packets_processed_1);
  printf("Mean Delay 2 (msec) = %.2f \n", 1e3*data->accumulated_delay_2/data->number_of_packets_processed_2);
  printf("Mean Delay 3 (msec) = %.2f \n", 1e3*data->accumulated_delay_3/data->number_of_packets_processed_3);
  printf("\n");
}


void
output_results_excel(Simulation_Run_Ptr simulation_run)
{
  printf("\n\n");
  Simulation_Run_Data_Ptr data;

  data = (Simulation_Run_Data_Ptr) simulation_run_data(simulation_run);

  // printf("%d, ", data->random_seed);
  // printf("%.3f, ", (double) PACKET_ARRIVAL_RATE);
  printf("%.2f, ", 1e3*data->accumulated_delay_1/data->number_of_packets_processed_1);
  printf("%.2f, ", 1e3*data->accumulated_delay_2/data->number_of_packets_processed_2);
  printf("%.2f \n", 1e3*data->accumulated_delay_3/data->number_of_packets_processed_3);

  // printf("%.2f \n",
	//  1e3*data->accumulated_delay/data->number_of_packets_processed);
}