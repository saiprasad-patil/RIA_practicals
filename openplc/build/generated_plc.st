PROGRAM blinky_psy
  VAR
    blinky_led AT %QX0.3 : BOOL;
  END_VAR
  VAR
    TON0 : TON;
    TOF0 : TOF;
  END_VAR

  TON0(EN := TRUE, IN := NOT(blinky_led), PT := T#500ms);
  TOF0(EN := TON0.ENO, IN := TON0.Q, PT := T#500ms);
  blinky_led := TOF0.Q;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : blinky_psy;
  END_RESOURCE
END_CONFIGURATION
