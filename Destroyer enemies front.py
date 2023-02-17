import pygame
pygame.init()

SCREEN_WIDTH = 800
SCREEN_HEIGHT = int(SCREEN_WIDTH * 0.8)

screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption('Freedom Fighter')
icon = pygame.image.load('icon.png')
pygame.display.set_icon(icon)
start_game = False

class Button():
	def __init__(self,x, y, image, scale):
		width = image.get_width()
		height = image.get_height()
		self.image = pygame.transform.scale(image, (int(width * scale), int(height * scale)))
		self.rect = self.image.get_rect()
		self.rect.topleft = (x, y)
		self.clicked = False

	def draw(self, surface):
		action = False
		pos = pygame.mouse.get_pos()

		if self.rect.collidepoint(pos):
			if pygame.mouse.get_pressed()[0] == 1 and self.clicked == False:
				action = True
				self.clicked = True
		if pygame.mouse.get_pressed()[0] == 0:
			self.clicked = False
	
		surface.blit(self.image, (self.rect.x, self.rect.y))
		return action

start_img = pygame.image.load('img/start_btn.png').convert_alpha()
exit_img = pygame.image.load('img/exit_btn.png').convert_alpha()
restart_img = pygame.image.load('img/restart_btn.png').convert_alpha()

BG = (255,0,0)

font = pygame.font.SysFont('Futura', 30)

def draw_text(text, font, text_col, x, y):
	img = font.render(text, True, text_col)
	screen.blit(img, (x, y))


def draw_bg():
	screen.fill(BG)


start_button=Button(SCREEN_WIDTH // 2 - 130, SCREEN_HEIGHT // 2 - 150, start_img, 1)
exit_button=Button(SCREEN_WIDTH // 2 - 110, SCREEN_HEIGHT // 2 + 50, exit_img, 1)
run = True
while run:

	if start_game == False:

		screen.fill(BG)
		if start_button.draw(screen):
			start_game = True
		if exit_button.draw(screen):
			run = False
	else:
		draw_bg()
		
	pygame.display.update()

pygame.quit()