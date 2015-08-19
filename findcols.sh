#!/bin/zsh 


[ ! -f test-0.jpg ] && convert $1 -colorspace Gray test.jpg

[ ! -f blur-0.jpg ] && convert test-0.jpg -blur 500x5 blur-0.jpg

convert blur-0.jpg -threshold 90% thresh-0.jpg

convert thresh-0.jpg -canny 5 canny-0.jpg

convert canny-0.jpg -hough-lines 30x30+120 hough-0.jpg

#open hough-0.jpg

