def bottle_song_lyrics(n)
  puts "The lyrics to #{n} Bottles of Beer\n\n"
  lyric_constructor(n)
end

def lyric_constructor(n)
  return if n == 0
  if n == 1
    puts  "1 bottle of beer on the wall, 1 bottle of beer.
      Take one down, pass it around...
      No more bottles of beer on the wall, no more bottles of beer."
    else
      puts "#{n} bottles of beer on the wall, #{n} bottles of beer.
      Take one down, pass it around..."
    lyric_constructor(n-1)
  end
end
