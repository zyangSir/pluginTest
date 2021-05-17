import { registerPlugin } from '@capacitor/core';

import type { BTMP3PlayerPlugin } from './definitions';

const BTMP3Player = registerPlugin<BTMP3PlayerPlugin>('BTMP3Player', {
  web: () => import('./web').then(m => new m.BTMP3PlayerWeb()),
});

export * from './definitions';
export { BTMP3Player };
