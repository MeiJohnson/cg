from OpenGL.GL import *
from OpenGL.GLU import *
from OpenGL.GLUT import *

def renderScene():
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

    glBegin(GL_TRIANGLES)
    glVertex3f(-0.5,-0.5,0.0)
    glVertex3f(0.0,0.5,0.0)
    glVertex3f(0.5,-0.5,0.0)
    glEnd()

    glutSwapBuffers()
    return

glutInit()
glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB | GLUT_DEPTH)
glutInitWindowPosition(100,100)
glutInitWindowSize(400,400)
glutCreateWindow("Урок 1")
glutDisplayFunc(renderScene)
glutMainLoop()

#glutDisplayFunc(draw)
#glutIdleFunc(draw)
