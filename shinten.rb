slc = 0
print "\n進展表並び替えスクリプト ver 0.9\n"
print "\nEnterで続行, qで終了\n"
while slc!=""
	print ": "
	slc = gets.chop
	if slc=="q"
		exit
	end
end

rslct = 0
while rslct!="y"
	i = 0
	key = 0
	s1 = []
	s2 = []
	s3 = []

	print "\n生徒を入力してください(生徒がいない場合は空白)\n"
  print "終了する場合はCtrl-c\n"
	print "\n1時間目\n"
	while i < 6
		print ": "
		key = gets.chop
		s1[i] = key
		i += 1
	end

	i = 0
	print "2時間目\n"
	while i < 6
		print ": "
		key = gets.chop
		s2[i] = key
		i += 1
	end

	i = 0
	print "3時間目\n"
	while i < 6
		print ": "
		key = gets.chop
		s3[i] = key
		i += 1
	end

	print "1時間目: ", s1, "\n", "2時間目: ", s2, "\n", "3時間目: ", s3, "\n"
	print "\nこれでよろしいですか? (y/n)\n"
	print ": "
	rslct = gets.chomp
end

fst = []
f_id = 0
snd = []
s_id = 0
trd = []
t_id = 0

for i in 0..6
	for j in 0..6
		if s2[i]==s3[j]
			trd[t_id] = s2[i]
			t_id += 1
		end
	end
end

for i in 0..6
	for j in 0..6
		if s1[i]==s2[j]
			snd[s_id] = s1[i]
			s_id += 1
		end
	end
end

fst = s1

s1_dif = Marshal.load(Marshal.dump(s1))
s2_dif = Marshal.load(Marshal.dump(s2))
s3_dif = Marshal.load(Marshal.dump(s3))

for i in 0..6
	for j in 0..6
		if trd[i]==snd[j]
			snd[j]=""
		elsif trd[i]==fst[j]
			fst[j]=""
		end
	end
end

for i in 0..6
	for j in 0..6
		if snd[i]==fst[j]
			fst[j]=""
		end
	end
end

#print fst, " ", snd, " ", trd, "\n"
#print s1_dif, " ", s2_dif, " ", s3_dif, "\n"
#print "\n"

s1_dif = s1_dif - fst - snd - trd
s2_dif = s2_dif - fst - snd - trd
s3_dif = s3_dif - fst - snd - trd

fst += s1_dif
snd += s2_dif
trd += s3_dif
lst = fst + snd + trd
lst = lst - [""] - [nil]
lst = lst.join(", ")

print "順番は", lst, "です\n"