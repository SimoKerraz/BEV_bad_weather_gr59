

rain = 0
count = 0
sample_cnt = 0
after_rain = 0
fog = 0
night = 0
snow = 0
for i in data:
    count+=1
    sample_cnt += i['nbr_samples'] * 6
    if 'rain' in i['description'].lower():
        rain += i['nbr_samples'] * 6
    if 'after rain' in i['description'].lower():
        after_rain += i['nbr_samples'] * 6
    if 'fog'  in i['description'].lower():
        fog += i['nbr_samples'] * 6
    if 'night' in i['description'].lower():
        night += i['nbr_samples'] * 6
    if 'snow' in i['description'].lower():
        snow += i['nbr_samples'] * 6
        
        
print('Nbr rain scenes: {}'.format(rain))
print('Nbr scenes: {}'.format(count))
print('Nbr samples: {}'.format(sample_cnt))
print('Nbr after rain scenes: {}'.format(after_rain))
print('Nbr fog scenes: {}'.format(fog))
print('Nbr night scenes: {}'.format(night))
print('Nbr snow scenes: {}'.format(snow))

