import Display
import math
import pygame

BORDER_X = 16
BORDER_Y = 10
BORDER = 40

SIZE = 13

MAX_X = 800
MAX_Y = 480


def shoot(screen, x, y, x_ball_1, y_ball_1,x_ball_2,y_ball_2):
    length = math.sqrt(x * x + y * y)
    vector = [x / length, y / length]
    vector2= [0,0]	
    speed = length / 2.0
    speed2=0
    back_x = (vector[0] < 0)
    back_y = (vector[1] < 0)

    vector[0] = math.fabs(vector[0])
    vector[1] = math.fabs(vector[1])

    clock = pygame.time.Clock()

    while speed >= 0:
        if x_ball_1 < BORDER_X + BORDER + SIZE:
            back_x = False
        if x_ball_1 > (MAX_X + BORDER_X) - (BORDER + SIZE):
            back_x = True
        if y_ball_1 < BORDER_Y + BORDER + SIZE:
            back_y = False
        if y_ball_1 > (MAX_Y + BORDER_Y) - (BORDER + SIZE):
            back_y = True

        if not back_x:
            x_ball_1 += vector[0] * (speed / 10.0)
        else:
            x_ball_1 -= vector[0] * (speed / 10.0)

        if not back_y:
            y_ball_1 += vector[1] * (speed / 10.0)
        else:
            y_ball_1 -= vector[1] * (speed / 10.0)

        speed -= 1
        collision=collide(x_ball_1,y_ball_1,x_ball_2,y_ball_2)
        if collision:
           print("collision")
           final_vector = vect_collide(x_ball_1,y_ball_1,x_ball_2,y_ball_2)
           vector=final_vector[0]
           vector2=final_vector[1]
           speed=speed/2.0           
        Display.draw_background(screen)
        Display.draw_ball(screen, (255, 255, 255), int(x_ball_1), int(y_ball_1))
        Display.draw_ball(screen, (255, 255,0), int(x_ball_2), int(y_ball_2))
        pygame.display.update()
        clock.tick(60)
    return [x_ball_1, y_ball_1]

def collide(x_ball_1, y_ball_1,x_ball_2,y_ball_2):
    if (math.sqrt((x_ball_2-x_ball_1)*(x_ball_2-x_ball_1)+(y_ball_1-y_ball_2)*(y_ball_1-y_ball_2)) <= (2*SIZE)):
        collision=1
    else:
        collision=0
    return collision
 
#def border_collide(x_ball,y_ball):
    

def vect_collide(x_ball_1,y_ball_1,x_ball_2,y_ball_2):#,vector1,vector2,speed1,speed2):
    central_vector = [x_ball_2-x_ball_1,y_ball_2-y_ball_1]
    length_central_vector = math.sqrt((x_ball_2-x_ball_1)*(x_ball_2-x_ball_1)+(y_ball_2-y_ball_1)*(y_ball_2-y_ball_1))
    final_vector_1 = [central_vector[0]/length_central_vector, central_vector[1]/length_central_vector]
    final_vector_2 = [-1*final_vector_1[1],final_vector_1[0]]
    return [final_vector_1, final_vector_2]

 










