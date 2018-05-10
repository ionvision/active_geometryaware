## GRU IoU pretrain

cd ..

python train_active_mvnet.py --is_training=True --LOG_DIR=log_agent_all --task_name='gru_nostop_iou_longermem_ftDQN_coef1_lastrecon_double_mug'     \
 --max_episode_length=4 --reward_type='IoU' --learning_rate=5e-4 --burn_in_length=10 --burn_in_iter=20000 \
 --test_every_step=200 --save_every_step=200 --max_iter=10000 --batch_size=4 --voxel_resolution=64 \
  --resolution=128 --category='mix4' --unet_name='U_VALID' --agg_name='GRU' --mem_length=100 \
 --use_coef=False --loss_coef=5 --if_save_eval=True --test_episode_num=20 --GBL_thread=True --reward_weight=10 \
--delta=20.0 --reg_act=0.01 --penalty_weight=0 --finetune_dqn_only=True --gamma=0 --burin_opt=1 \
--pretrain_restore=True --pretrain_restore_path='/home/ricsonc/models/double_mug/pretrain_model.ckpt-20000'
