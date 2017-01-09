#!/usr/bin/env ruby

command = %q<lsof -iTCP -sTCP:LISTEN -P -n | sed '1 d;s/::[0-9]*//;s/.*:\([0-9]*\).*/\1/g' | sort -n | uniq>
used_ports = `#{command}`.split("\n").map(&:to_i)

all_ports = (1024..65535).to_a
unused_ports = all_ports - used_ports

p unused_ports.shuffle.first
