%% ������Simulink�t�@�C�����s�e�X�g�v���O����

rosshutdown %ROS�T�[�o���I�������閽��
rosinit     %ROS�T�[�o���N�������閽�� 

str = {'Pub_Sensor_20180704', 'Sub_Vel_Pos_20180703'}; %�e���f�����iSimulink�t�@�C���̖��O�j

parfor j=1:2 %������Simulink�t�@�C���𓯎��ɋN��������ۂɕK�v�Ȋ֐�
    open_system(str{j});
    set_param(str{j}, 'SimulationCommand', 'Start'); %���f���̏�Ԃ�Start�ɂ��Ď��s�������s��
end