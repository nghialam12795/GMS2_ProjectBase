/*	GMS2_ProjectBase

	Copyright (C) 2020  Nghia Lam

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

/* ********************************************************************* */

/// @description	Update current UI status

// Done startup (Trick for not to draw flashing UI when startup)
startup = true;


if(state == eVISUALSTATE.inactive && anim_step == 0)
{
	timer = 0;
	state = eVISUALSTATE.activating;
	anim_step++;
}
else if(state == eVISUALSTATE.active && anim_step < anim_max)
{
	anim_step += anim_spd;
}
else if(state == eVISUALSTATE.active && anim_step >= anim_max)
{
	timer = 0;
	state = eVISUALSTATE.deactivating;
}
else if (state == eVISUALSTATE.inactive && anim_step >= anim_max)
{
	done = true;
}