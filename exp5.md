## Experiment 5: Exploring VLabs for robotic simulation

**Aim:**   
Learn about the geometric relationship between input and output parameters, formation of transformation matrix and simulate the movemaster RM-501 robotic arm and PUMA 560

**Theory:**
Mitsubishi Movemaster RM-501 specfications:
- 5 rotational joints, 5 degree of freedom
- Weight: 27 kg
- Work envelope: 445 mm maximum horizontal reach
- Maximum payload: 1.2 kg
- Components: The Robot, Drive unit for handling arm velocity, acceleration, deceleration and movement trajectories for user and teaching box to manually move the joints
- Range of movement:
    - Waist joint: 300
    - Shoulder joint: 130
    - Elbow joint: 90
    - Wrist bend: +90 to -90
    - Wrist roll: +180 to -180
- Workspace envelope is a vertical hemisphere  

PUMA 560 specifications:
- 6 degree of freedom, all rotational joints
- Weight: 54 kg
- Reach: 864 mm
- Payload: 2.5 kg  

**Learnings:**  
- Learned about the specifications of the Mitsubishi Movemaster RM-501 and PUMA 560 robots
- Tested the simulation using both the slider and trying out vaarious values of angles for each joint of both robots
- Examined the position of the tooltip in the workspace in various orientations
- Viewed the changes in the transformation matrix for various orientations of the robot
