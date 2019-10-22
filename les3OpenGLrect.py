from OpenGL.GL import *
from OpenGL.GLU import *
from OpenGL.GLUT import *

def changeSize(w, h):
	# предотвращение деления на ноль
    if (h == 0):
        h = 1
    ratio =  w * 1.0 / h
    # используем матрицу проекции
    glMatrixMode(GL_PROJECTION)
    # обнуляем матрицу
    glLoadIdentity()
    # установить параметры вьюпорта
    glViewport(0, 0, w, h)
    # установить корректную перспективу
    gluPerspective(45.0, ratio, 0.1, 100.0)
    # вернуться к матрице проекции
    glMatrixMode(GL_MODELVIEW)
    return

def renderScene2():
    global rquad
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

    glLoadIdentity()
    glTranslatef(-1.5,0.0,-6.0)

    glRotatef(rquad, 0.0, 1.0, 0.0)
    glColor3f(0.5,0.5,1.0)

    glBegin(GL_QUADS)
    glVertex3f(-1.0, 1.0, 0.0)
    glVertex3f( 1.0, 1.0, 0.0)
    glVertex3f( 1.0,-1.0, 0.0)
    glVertex3f(-1.0,-1.0, 0.0)
    glEnd()

    rquad-=0.15

    glutSwapBuffers()
    return

glutInit()
glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH)
glutInitWindowPosition(100,100)
glutInitWindowSize(400,400)
glutCreateWindow("Урок 3")
rquad = 0

glutDisplayFunc(renderScene2)
glutReshapeFunc(changeSize)
glutIdleFunc(renderScene2)

glutMainLoop()
