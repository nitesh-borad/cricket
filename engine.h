#ifndef ENGINE_H
#define ENGINE_H

#include "team.h"

/* Engine */
int d6(void);
int d8(void);
int d10(void);
void play2(void);
void play4(void);
void play6(void);
void play8(void);
void play10(void);
player *find_player(char *name, team *team);
void set_bowler(void);
void swap_batsmen(void);
void swap_bowlers(void);
double calculate_strike_rate(player *batsman);
void show_batsman_scoreline(player *batsman);
double calculate_economy_rate(player *bowler);
void show_bowler_scoreline(player *bowler);
void play_over(void);
void over(void);
void change_aggression(aggression agg);
void change_aggression_very_defensive(void);
void change_aggression_defensive(void);
void change_aggression_normal(void);
void change_aggression_aggressive(void);
void change_aggression_very_aggressive(void);
void change_innings(void);
void try_new_match(void);
void new_match(void);
void toss(team *a, team *b);

/* Mechanics */
void ball(int die1, int die2);
void one(void);
void two(void);
void three_configuration(void);
void three(void);
void four(void);
void wicket_chance(void);
void notout(void);
void mode_of_dismissal(void);
void set_fall_of_wickets(dismissal dismiss);
void caught_in_the_field(void);
void caught_behind(void);
void bowled(void);
void lbw(void);
void runout(void);
void miscellany(void);
void stumped(void);
void hit_wicket(void);
void retired_hurt(void);
void big_hit(void);
void six(void);
void extras(void);
void wide(void);
void byes(void);
void leg_byes(void);
void noball(void);
void dot(void);

#endif
