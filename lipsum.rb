#!/usr/bin/env ruby

lipsum_wanted = ARGV[0]
paragraphs = ARGV[1]

paragraphs = ARGV[1] ? ARGV[1].to_i : 1

variable = lipsum_wanted.downcase

sam_lipsum = "Normally, both your asses would be dead as fucking fried chicken, but you happen to pull this shit while I'm in a transitional period so I don't wanna kill you, I wanna help you. But I can't give you this case, it don't belong to me. Besides, I've already been through too much shit this morning over this case to hand it over to your dumb ass."
hip_lipsum = "Flannel aliqua kombucha copper mug iceland. Tofu hot chicken chartreuse, craft beer church-key godard consectetur celiac hella vinyl cray tattooed pok pok authentic neutra. Street art kombucha keffiyeh etsy, authentic photo booth literally. You probably haven't heard of them bitters veniam hella, officia selvage eiusmod tumeric intelligentsia velit cornhole next level yr 3 wolf moon. Non aliqua glossier, bespoke aute esse messenger bag cray vexillologist keffiyeh godard la croix knausgaard. Bushwick flannel post-ironic, duis small batch readymade dolor anim cray glossier craft beer squid XOXO knausgaard. Selfies minim readymade laboris, coloring book typewriter marfa paleo four loko cold-pressed sriracha."
arrested_lipsum = "It's a hug, Michael. I'm hugging you. Well, what do you expect, mother? Army had half a day. We just call it a sausage. Army had half a day. No, I did not kill Kitty. However, I am going to oblige and answer the nice officer's questions because I am an honest man with no secrets to hide."


lipsum = case variable
when "samuel"
  sam_lipsum
when "hipster"
  hip_lipsum
when "arrested"
  arrested_lipsum
else
  "Please type a valid category such as Samuel, Hipster, or Arrested."
end

(paragraphs < 1 ? 1 : paragraphs).times do
  puts "Here's some #{lipsum_wanted} lipsum: #{lipsum}"
end
system("echo #{lipsum * paragraphs} | pbcopy")



# if variable == "samuel l jackson"
#   lipsum = sam_lipsum
# elsif variable == "hipster"
#   lipsum = hip_lipsum
# elsif variable == "arrested development"
#   lipsum = arrested_lipsum
# else
#   puts "Please type a valid category such as Samuel L Jackson, Hipster, or Arrested Development."
# end
