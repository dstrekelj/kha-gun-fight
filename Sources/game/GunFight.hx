package game;

import kha.Color;
import kha.Framebuffer;
import kha.Image;
import kha.Scaler;
import kha.System;

class GunFight {
	public static inline var HEIGHT : Int = 240;
	public static inline var WIDTH : Int = 320;
	
	var backbuffer : Image;
	
	public function new() {
		backbuffer = Image.createRenderTarget(WIDTH, HEIGHT);
	}

	public function update() : Void {
		
	}

	public function render(framebuffer: Framebuffer) : Void {
		backbuffer.g2.begin(Color.Black);
		backbuffer.g2.end();
		
		framebuffer.g2.begin(Color.Blue);
		Scaler.scale(backbuffer, framebuffer, System.screenRotation);
		framebuffer.g2.end();
	}
}
