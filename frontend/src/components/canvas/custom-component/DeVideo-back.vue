<template>
  <el-row ref="mainPlayer">
    <div class="player">
      <video-player
        ref="videoPlayer"
        class="vjs-custom-skin"
        :options="playerOptions"
      />
    </div>
  </el-row>
</template>

<script>
// custom skin css
import '@/custom-theme.css'
import { mapState } from 'vuex'
import 'video.js/dist/video-js.css'
import 'videojs-flash'
import SWF_URL from 'videojs-swf/dist/video-js.swf'

export default {
  props: {
    // eslint-disable-next-line vue/require-default-prop
    propValue: {
      type: String,
      require: true
    },
    // eslint-disable-next-line vue/require-default-prop
    element: {
      type: Object
    },
    editMode: {
      type: String,
      require: false,
      default: 'edit'
    },
    active: {
      type: Boolean,
      require: false,
      default: false
    },
    h: {
      type: Number,
      default: 200
    }
  },
  data() {
    return {
      playerOptions: {
        autoplay: true,
        sources: [{
          type: 'rtmp/mp4',
          src: 'rtmp://202.69.69.180:443/webcast/bshdlive-pc' // 亲测可用
        }],
        techOrder: ['html5', 'flash'],
        flash: {
          swf: SWF_URL
        }
      }
    }
  },

  computed: {
    moveFlag() {
      return (this.element.optStatus.dragging || this.element.optStatus.resizing)
    },
    curGap() {
      return this.element.auxiliaryMatrix ? this.componentGap : 0
    },
    ...mapState([
      'componentGap',
      'canvasStyleData'
    ])
  },
  watch: {

  },
  created() {
  },
  mounted() {
  },
  methods: {

    // listen event
    onPlayerPlay(player) {
      // console.log('player play!', player)
    },
    onPlayerPause(player) {
      // console.log('player pause!', player)
    },
    onPlayerEnded(player) {
      // console.log('player ended!', player)
    },
    onPlayerLoadeddata(player) {
      // console.log('player Loadeddata!', player)
    },
    onPlayerWaiting(player) {
      // console.log('player Waiting!', player)
    },
    onPlayerPlaying(player) {
      // console.log('player Playing!', player)
    },
    onPlayerTimeupdate(player) {
      // console.log('player Timeupdate!', player.currentTime())
    },
    onPlayerCanplay(player) {
      // console.log('player Canplay!', player)
    },
    onPlayerCanplaythrough(player) {
      // console.log('player Ca
      // console.log('example 01nplaythrough!', player)
    },

    // or listen state event
    playerStateChanged(playerCurrentState) {
      // console.log('player current update state', playerCurrentState)
    },

    // player is ready
    playerReadied(player) {
      // seek to 10s
      // console.log('example player 1 readied', player)
      // player.currentTime(10): the player is readied', player)
    }
  }
}
</script>

<style>
  .info-class{
    text-align: center;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #FFFFFF;
    font-size: 12px;
    color: #9ea6b2;
  }
  .move-bg {
    height: 100%;
    width: 100%;
    background-color: #000000;
  }
</style>

