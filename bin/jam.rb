#!/usr/bin/env ruby

require 'prog-rock/concert'

c = Concert.new

c.play :bouncing_ball
`#{ARGV.join(' ')}`
