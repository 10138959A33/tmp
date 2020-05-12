$compressSpecs = @{
  Path = $args[0]
  CompressionLevel = "NoCompression"
  DestinationPath = $args[1]
}
Compress-Archive @compressSpecs
