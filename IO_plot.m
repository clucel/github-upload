% load up IO data file (X_IO.mat) and run this to get a plot
% (just wrote this to recreate the plot that's produced while the IO
% protocol is running)

dBs = fieldnames(data_store.startle.SR);
for i = 1:numel(dBs)
    for trial = 1:4
        strdB = dBs(i);
        dB = str2num(strdB{1}(3:end));
        plot(dB, data_store.startle.SR.(strdB{1})(trial), '*')
        hold on
    end
end
