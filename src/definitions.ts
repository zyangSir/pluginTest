export interface BTMP3PlayerPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  playMusic(options: {value: string}): Promise<void>;
}
