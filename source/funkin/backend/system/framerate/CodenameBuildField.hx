package funkin.backend.system.framerate;

import funkin.backend.system.macros.GitCommitMacro;
import openfl.text.TextField;

class CodenameBuildField extends TextField {
	public function new() {
		super();
		defaultTextFormat = Framerate.textFormat;
		autoSize = LEFT;
		multiline = wordWrap = false;
		reload();

		this.antiAliasType = ADVANCED;
        this.sharpness = 400/*MAX ON OPENFL*/;
	}

	public function reload() {
		text = '${Flags.VERSION_MESSAGE}';
		#if debug
		text += '\n${Flags.COMMIT_MESSAGE}';
		#end
	}
}
