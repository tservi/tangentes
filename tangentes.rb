#!/usr/bin/env ruby
one_radiant = Math::PI / 180
hypotenuse  = Math::sqrt(100 * 100 + 6  * 6 )
correction = 100 / hypotenuse
#puts correction
#puts hypotenuse
(1..90).each {
  |i|
  r = i * one_radiant
  alpha2 = Math::atan( correction * Math::tan( r ) )
  alpha2deg = alpha2 * 180 / Math::PI
  printf( '%0.04f deg = %0.04f radiant ==> correction %0.04f  radiant = %0.04f deg ', i , r , alpha2 , alpha2deg )
  print( "\r" )
}