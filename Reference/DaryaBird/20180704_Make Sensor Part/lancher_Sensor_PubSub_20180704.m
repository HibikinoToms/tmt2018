%% 複数のSimulinkファイル実行テストプログラム

rosshutdown %ROSサーバを終了させる命令
rosinit     %ROSサーバを起動させる命令 

str = {'Pub_Sensor_20180704', 'Sub_Vel_Pos_20180703'}; %各モデル名（Simulinkファイルの名前）

parfor j=1:2 %複数のSimulinkファイルを同時に起動させる際に必要な関数
    open_system(str{j});
    set_param(str{j}, 'SimulationCommand', 'Start'); %モデルの状態をStartにして実行だけを行う
end