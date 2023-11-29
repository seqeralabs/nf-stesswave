params.times = 2

process pull {
  input:
  val index
  """
  echo Hello $index 
  sleep 5
  """
}


workflow {
  channel.of(1..params.times) | pull
}
