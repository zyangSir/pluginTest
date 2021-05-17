import { WebPlugin } from '@capacitor/core';

import type { BTMP3PlayerPlugin } from './definitions';

export class BTMP3PlayerWeb extends WebPlugin implements BTMP3PlayerPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  async playMusic(options: {value: string}): Promise<void> {
    console.log('music', options);
  }
}
