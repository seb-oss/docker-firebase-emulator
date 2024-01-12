# docker-firebase-emulator
Firebase emulator image for contract testing and local environments

## Configuration

Here is an example file you can add to `/app/firebase.json` inside the container.

```json
{
  "hub": {
    "port": 4400,
    "host": "0.0.0.0"
  },
  "logging": {
    "port": 4500,
    "host": "0.0.0.0"
  },
  "ui": {
    "enabled": true,
    "port": 4000,
    "host": "0.0.0.0"
  },
  "emulators": {
    "pubsub": {
      "port": "8085",
      "host": "0.0.0.0"
    }
  }
}
```
