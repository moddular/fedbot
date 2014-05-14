# Description:
#   Goat
#
# Commands:
#   hubot goat me - Get a random Ram
#   hubot goat bomb N - Get N Rams

module.exports = (robot) ->
  require('../lib/me-static')(robot, 'goat', [
    'http://media-cache-ec0.pinimg.com/736x/30/7e/0e/307e0e974bbf03604af4bca7859dd9aa.jpg',
    'http://media-cache-ec0.pinimg.com/736x/2d/58/02/2d5802fc1c7faca10b69beb14cfaea2f.jpg',
    'http://media-cache-ec0.pinimg.com/736x/20/75/eb/2075eb853fb798ec450a389070d8668c.jpg',
    'http://media-cache-ec0.pinimg.com/736x/13/a3/33/13a3336f67f4ffe6a5a593fc7bbfa984.jpg',
    'http://media-cache-ak0.pinimg.com/736x/03/22/ac/0322ac963cddb39462aa850445023501.jpg',
    'http://media-cache-ak0.pinimg.com/736x/77/30/a2/7730a25cb21cf387c2f864c2a3b820d2.jpg',
    'http://media-cache-ak0.pinimg.com/736x/21/45/0c/21450cc46a2368d8c252b4bd7d2361b5.jpg',
    'http://media-cache-ec0.pinimg.com/736x/5c/ef/eb/5cefebbece38ca3891220a6e5fee0f63.jpg',
    'http://media-cache-ak0.pinimg.com/736x/86/6e/33/866e33996a561e14fefa36919e15ff91.jpg',
    'http://media-cache-ak0.pinimg.com/736x/80/22/4c/80224c69b2f95660caeb1b972db8a49c.jpg',
    'http://media-cache-ak0.pinimg.com/736x/1f/a4/f3/1fa4f37b77f46af4570abc5699bd82c3.jpg',
    'http://media-cache-ak0.pinimg.com/736x/51/ed/b1/51edb10b366c8a95e67dfcc176767b6b.jpg',
    'http://31.media.tumblr.com/0d1ac3246901e2eb7570c15962d4fc21/tumblr_n17buvgC5l1sn0mkdo1_250.gif',
    'http://25.media.tumblr.com/6f2cdb61b52c5d62c3f766f890b9ebcc/tumblr_mzd8v3UqSw1r7yxrco1_500.jpg',
    'http://25.media.tumblr.com/tumblr_lzy3hlmtxc1qinkmao1_500.jpg',
    'http://24.media.tumblr.com/2f31ad29cc5202e4e1823963b2dc4c82/tumblr_mrnx6knCar1safybko1_500.jpg',
    'http://24.media.tumblr.com/09e98d4f1163467da28770d505c8e9d5/tumblr_mo8eota5v41sped3xo1_500.jpg',
    'http://25.media.tumblr.com/63dd0f70e5f710b88b2723efda3e6a70/tumblr_mjz5oiWGFY1qhbfvro1_500.jpg',
    'http://24.media.tumblr.com/fad858389adaf852882b79e840abfa08/tumblr_mpv0q9eusI1suuxy3o1_400.gif',
    'http://31.media.tumblr.com/tumblr_lf4aap30XU1qdh3d3o1_500.jpg',
    'http://24.media.tumblr.com/e078311ab29f7652b0d9fd1152ab42cd/tumblr_mpx2xyAkwk1rsywlko1_400.jpg',
    'http://global3.memecdn.com/hallowed-be-his-name_o_1340621.jpg',
    'http://global3.memecdn.com/goats_o_670424.jpg',
    'http://global3.memecdn.com/goat-fusion_o_1536961.jpg',
    'http://global3.memecdn.com/goat-fails_o_268364.gif',
    'http://global3.memecdn.com/lava-goats_o_1204020.jpg',
    'http://global3.memecdn.com/goat-murderous-psychopath_o_1164202.jpg',
    'http://global3.memecdn.com/how-i-goat-here_o_1076852.jpg',
    'http://global3.memecdn.com/goat-inspection_o_2274021.jpg',
    'http://global3.memecdn.com/you-dont-got-the-goats_o_1005723.jpg',
    'http://global3.memecdn.com/skyrim-goats_o_2653401.jpg',
    'http://global3.memecdn.com/thats-one-grumpy-goat-or-whateva_o_929524.gif',
    'http://global3.memecdn.com/drunk-goat_o_131223.jpg',
    'http://global3.memecdn.com/wheres-derek_o_950886.jpg',
    'http://global3.memecdn.com/awesome_o_892510.jpg',
    'http://global3.memecdn.com/meanwhile-in-narnia_o_233610.jpg',
    'http://global3.memecdn.com/more-mischief_o_746744.gif',
    'https://i.chzbgr.com/maxW500/5467208704/hF5B014C9.gif',
    'https://i.chzbgr.com/maxW500/7125393920/h307E1165.gif',
    'https://i.chzbgr.com/maxW500/6897712640/h2B155226.gif',
    'http://media.giphy.com/media/QdhYccY8xL21y/giphy.gif',
    'http://media0.giphy.com/media/2k8b8zEG5R0S4/giphy.gif',
    'http://media.giphy.com/media/oR4557fzS6rao/giphy.gif',
    'http://24.media.tumblr.com/13a280c1ec9ba7cdef82104350e9000d/tumblr_n3q3wynJrM1rchct6o1_500.gif',
    'http://24.media.tumblr.com/e84f4f821440604f960e2dfe92b87d3b/tumblr_mj1gd5YiTB1ruam3yo1_400.gif',
    'http://37.media.tumblr.com/da495430333543385b6301b2e1883a46/tumblr_mupjx13dud1s1efqyo1_250.gif'.
    'http://31.media.tumblr.com/540f47b439df1fcb30eb93f2a6ab788d/tumblr_mu9et5W32s1rdd1bdo1_400.gif',
    'http://37.media.tumblr.com/04f7a36818a9fb25679665ac863c3ac4/tumblr_mnj6chWoBf1sqhn26o1_r2_250.gif',
    'http://24.media.tumblr.com/tumblr_lr6ikpuYyj1qbj4xbo1_400.gif',
    'http://media.giphy.com/media/12m4TK1i8yopOw/giphy.gif',
    'http://wac.450f.edgecastcdn.net/80450F/thefw.com/files/2013/07/tumblr_lz4087jbl21r53i41o1_400.gif',
    'http://wac.450f.edgecastcdn.net/80450F/thefw.com/files/2013/07/funny-goat-gif.gif',
    'http://s3-ec.buzzfed.com/static/enhanced/webdr06/2013/9/5/11/enhanced-buzz-30277-1378394997-4.jpg'
  ])
