# paddleGAN
未完成~

蚂蚁呀嘿合成环境dockerfile

1. 下载dockerfile

2. `docker build -f dockerfile -t my/paddlegan .` 不想自己构建，可直接 `docker pull yexulong/paddlegan`

3. 新建work文件夹`mkdir work`将原视频source.mp4和待迁移表情图片source.png放到work文件夹里

4. `docker run -it --rm --name test_paddlegan -v work:/work my/paddlegan`

5. 在出来的终端里输入`cd /PaddleGAN/applications`

6. `export PYTHONPATH=$PYTHONPATH:/PaddleGAN && python -u tools/first-order-demo.py  --driving_video /source.mp4  --source_image /source.png --relative --adapt_scale`

7. 等待结果...
