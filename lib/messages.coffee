# # Messages

# LMU-3000 messages
messages =
  # #### Message type 2
  '2':      '83 05 45 31 00 33 46 01 01 01 02 06 C1 50 F1 C9 01 50 F1 C9 01 14 06 2F FA BD 1B 17 4A 00 00 81 5C 00 00 00 00 00 00 08 22 01 9A FF A1 2F 08 DC 00 FF 1E 10 00 00 00 00 00 00 00 1A 78 00 00 08 4F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 1A 00 01 CA E9 00 00 00 00 00 00 07 0C 00 00 00 00 00 00 0D 0E 00 00 00 00 00 00 2E AB 00 00 2F 85 00 00 00 00'
  # #### Message type 5 / subtype 131
  '5/131':  '83 05 45 31 00 10 82 01 01 01 05 00 01 00 00 00 33 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 64 00 00 FF 8D 00 00 01 08 00 83 00 5C 56 49 4E 3A 31 47 31 4A 43 35 34 34 34 52 37 32 35 32 33 36 37 00 50 52 4F 54 4F 3A 31 00 50 41 52 41 4D 53 3A 30 2C 31 2C 34 2C 37 2C 38 2C 31 31 2C 31 32 00 49 4E 44 43 54 52 53 3A 30 28 30 30 30 30 30 30 30 30 30 30 31 31 29 2C 31 28 31 31 31 31 31 31 31 31 31 31 31 29 00'
  # #### Message type 5 / subtype 132
  '5/132':  '83 05 45 31 00 10 36 01 01 01 05 00 05 4E 66 A9 1A 4E 66 A9 1A 13 BF 6B 29 BA 18 A8 25 00 00 11 04 00 00 00 05 00 B9 09 00 01 9A FF A3 2F 0A 01 00 00 84 00 25 00 07 50 30 31 30 30 50 30 32 30 30 50 30 33 30 30 43 30 33 30 30 42 30 32 30 30 55 30 31 30 30 50 30 31 30 31'
  # #### Message type 10
  '10':     '83 05 45 31 01 03 53 01 01 01 0A 04 80 51 33 EF F9 14 08 2E 61 BD 18 7C F3 00 E2 7B 0C 2F 03 17 02 00 00 00 00 00 00 00 00'
  # #### Message type 10 / eventCode 25 (idleMins)
  '10/25':  '83 05 45 31 01 03 53 01 01 01 0a 01 21 51 82 80 cd 14 06 32 19 bd 1b 19 72 00 56 01 0b 2f 00 19 08 00 00 00 8f 00 00 00 00 00 00 00 8f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00'
  # #### Message type 10 / eventCode 26 (vBatt)
  '10/26':  '83 05 45 31 00 49 44 01 01 01 0a 00 4d 51 50 e3 e7 14 12 33 42 bd 4f 32 be 00 00 0c 07 00 00 1a 02 00 00 31 e0 00 00 00 00'

# # toHexLiterals()
# Returns an array of hex literal strings:
#
#     ['0x33', '0xEF', '0xF9', ...]
toHexLiterals = (str) ->
  str.match(/\w{2}/g).map (byte) ->
    "0x#{byte}"

toBuffer = (str) ->
  new Buffer(toHexLiterals str)

messages[k]=toBuffer(v) for k, v of messages

module.exports = messages