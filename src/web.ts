import { WebPlugin } from '@capacitor/core';

import type { MotionPluginPlugin } from './definitions';

export class MotionPluginWeb extends WebPlugin implements MotionPluginPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  async startActivityUpdates(): Promise<{
    confidence: number;
    activity: string;
  }> {
    throw this.unimplemented('Not implemented on web.');
  }

}
