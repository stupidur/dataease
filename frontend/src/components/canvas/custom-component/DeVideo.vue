<template>
  <el-row ref="mainPlayer">
    <div class="player">
      <video-player
        ref="videoPlayer"
        :options="playerOptions"
      />
    </div>
  </el-row>
</template>

<script>
import { videoPlayer } from 'vue-video-player'
import 'video.js/dist/video-js.css'
import 'videojs-flash'
import SWF_URL from 'videojs-swf/dist/video-js.swf'

export default {
  components: {
    videoPlayer
  },
  data() {
    return {
      playerOptions: {
        autoplay: true,
        sources: [{
          type: 'rtmp/mp4',
          src: 'rtmp://58.200.131.2:1935/livetv/hunantv' // 亲测可用
        }],
        techOrder: ['html5', 'flash'],
        flash: {
          swf: SWF_URL
        }
      }
    }
  }
}
</script>

