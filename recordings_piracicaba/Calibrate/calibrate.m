cal = ita_read('calibracao94db.wav');

ref = ita_read('pinknoise.wav');

bm = merge(ita_read('noise/ZOOM0005_Tr1.WAV'),ita_read('noise/ZOOM0005_Tr2.WAV'));
bm = ita_time_shift(bm,-32255,'samples');

sig = merge(bm,ref);

% Regra de três, pensando em pressão. Se cal.rms é 1Pa, então ref.rms é
pressao_ref = ref.rms/cal.rms;

% Agora, eu sei que bm.rms é o valor de amplitude no zoom para pressao_ref,
% logo, para 1 Pa seria
cal_factor = bm.rms/pressao_ref;

%Basta portanto dividir a amplitude dos arquivos do Zoom por cal_factor
%para termos os arquivos em Pascal.






