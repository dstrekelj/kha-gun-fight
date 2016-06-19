package;

import game.GunFight;

import kha.Assets;
import kha.Scheduler;
import kha.System;

class Main {
	public static function main() {
		System.init({title: "kha-gun-fight", width: 640, height: 480}, init);
	}
	
	static function init() : Void {
		Assets.loadEverything(postLoadEverything);
	}
	
	static function postLoadEverything() : Void {
		var g = new GunFight();
		System.notifyOnRender(g.render);
		Scheduler.addTimeTask(g.update, 0, 1 / 60);
	}
}
