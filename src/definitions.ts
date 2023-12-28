export interface MotionPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  startActivityUpdates(): Promise<{
    confidence: number;
    activity: string;
  }>;
}
