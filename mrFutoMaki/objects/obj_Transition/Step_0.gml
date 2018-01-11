if (mode != TRANS_MODE.OFF)
{
	if (mode ==TRANS_MODE.INTRO)
	{
		percent = max(0,percent - max((percent/10),0.005));
	}
	else
	{	//This is the code that changes the blackness between restarts
		percent = min(1.8,percent + max(((1.8 - percent)/10),0.005));
	}

	if (percent ==1.8) || (percent ==0)
	{
			switch (mode)
			{
				case TRANS_MODE.INTRO:
				{
					mode = TRANS_MODE.OFF;
					break;
				}
				case TRANS_MODE.NEXT:
				{
					mode = TRANS_MODE.INTRO;
					room_goto_next();
					break;
				}
				case TRANS_MODE.GOTO:
				{
					mode = TRANS_MODE.INTRO;
					room_goto(target);
					break;
				}
				case TRANS_MODE.RESTART:
				{
					game_restart();
					break;
				}
				
			}
	}
}