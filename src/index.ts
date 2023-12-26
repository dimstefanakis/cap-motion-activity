import { registerPlugin } from '@capacitor/core';

import type { MotionPluginPlugin } from './definitions';

const MotionPlugin = registerPlugin<MotionPluginPlugin>('MotionPlugin', {
  web: () => import('./web').then(m => new m.MotionPluginWeb()),
});

export * from './definitions';
export { MotionPlugin };
