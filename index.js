const Runtime = require('@hossapp/runtime').default

if (process.argv.length < 3) {
  throw new Error("Need manifest file")
}

const manifest = require(process.argv[2])
const runtime = new Runtime(manifest)
runtime.start()
