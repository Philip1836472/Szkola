import WaveSurfer from 'wavesurfer.js'

interface AudioPlayerState {
  isPlaying: boolean;
  currentAudio?: HTMLAudioElement;
  wavesurfer?: WaveSurfer;
}

class AudioPlayer {
  private state: AudioPlayerState = {
    isPlaying: false
  };

  private playButton!: HTMLButtonElement;
  private pauseButton!: HTMLButtonElement;
  private uploadButton!: HTMLButtonElement;
  private fileInput!: HTMLInputElement;
  private waveformContainer!: HTMLElement;
  private volumeSlider!: HTMLInputElement;

  constructor() {
    this.initializeElements();
    this.setupEventListeners();
    this.createWaveSurfer();
  }

  private initializeElements(): void {
    this.playButton = document.querySelector('.play-btn') as HTMLButtonElement;
    this.pauseButton = document.querySelector('.pause-btn') as HTMLButtonElement;
    this.uploadButton = document.querySelector('.upload-btn') as HTMLButtonElement;
    this.fileInput = document.querySelector('#audio-upload') as HTMLInputElement;
    this.waveformContainer = document.querySelector('#waveform') as HTMLElement;
    this.volumeSlider = document.querySelector('.volume-slider') as HTMLInputElement;
  }

  private createWaveSurfer(): void {
    if (!this.waveformContainer) return;

    this.state.wavesurfer = WaveSurfer.create({
      container: this.waveformContainer,
      waveColor: 'rgba(255, 107, 107, 0.8)',
      progressColor: '#ff6b6b',
      cursorColor: '#fff',
      barWidth: 3,
      barRadius: 3,
      height: 60,
      normalize: true,
      backend: 'WebAudio',
      mediaControls: false
    });

    this.state.wavesurfer.on('play', () => {
      this.updatePlayState(true);
    });

    this.state.wavesurfer.on('pause', () => {
      this.updatePlayState(false);
    });

    this.state.wavesurfer.on('finish', () => {
      this.updatePlayState(false);
    });
  }

  private setupEventListeners(): void {
    this.playButton?.addEventListener('click', () => {
      this.play();
    });

    this.pauseButton?.addEventListener('click', () => {
      this.pause();
    });

    this.uploadButton?.addEventListener('click', () => {
      this.fileInput?.click();
    });

    this.fileInput?.addEventListener('change', (event: Event) => {
      this.handleFileUpload(event);
    });

    this.volumeSlider?.addEventListener('input', (event: Event) => {
      const target = event.target as HTMLInputElement;
      const volume = parseFloat(target.value) / 100;
      this.state.wavesurfer?.setVolume(volume);
    });

    const uploadArea = document.querySelector('#upload-area');
    uploadArea?.addEventListener('click', (event: Event) => {
      const target = event.target as HTMLElement;
      if (!target.closest('.upload-btn')) {
        this.fileInput?.click();
      }
    });

    this.setupDragAndDrop();
  }

  private setupDragAndDrop(): void {
    const uploadArea = document.querySelector('#upload-area') as HTMLElement;
    if (!uploadArea) return;

    ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
      document.addEventListener(eventName, this.preventDefaults, false);
      document.body.addEventListener(eventName, this.preventDefaults, false);
    });

    ['dragenter', 'dragover'].forEach(eventName => {
      uploadArea.addEventListener(eventName, (e) => {
        this.preventDefaults(e);
        uploadArea.classList.add('drag-over');
      }, false);
    });

    ['dragleave', 'drop'].forEach(eventName => {
      uploadArea.addEventListener(eventName, (e) => {
        this.preventDefaults(e);
        uploadArea.classList.remove('drag-over');
      }, false);
    });

    uploadArea.addEventListener('drop', this.handleDrop.bind(this), false);
  }

  private preventDefaults(e: Event): void {
    e.preventDefault();
    e.stopPropagation();
  }

  private handleDrop(e: DragEvent): void {
    const dt = e.dataTransfer;
    const files = dt?.files;

    if (files && files.length > 0) {
      this.loadAudioFile(files[0]);
    }
  }

  private handleFileUpload(event: Event): void {
    const target = event.target as HTMLInputElement;
    const file = target.files?.[0];
    
    if (file) {
      this.loadAudioFile(file);
    }
  }

  private loadAudioFile(file: File): void {
    const url = URL.createObjectURL(file);
    this.state.wavesurfer?.load(url);
    
    const fileName = document.querySelector('.file-name') as HTMLElement;
    if (fileName) {
      fileName.textContent = file.name;
      fileName.style.display = 'block';
    }
  }

  private play(): void {
    this.state.wavesurfer?.play();
  }

  private pause(): void {
    this.state.wavesurfer?.pause();
  }

  private updatePlayState(isPlaying: boolean): void {
    this.state.isPlaying = isPlaying;
    
    if (isPlaying) {
      this.playButton?.classList.add('hidden');
      this.pauseButton?.classList.remove('hidden');
    } else {
      this.playButton?.classList.remove('hidden');
      this.pauseButton?.classList.add('hidden');
    }
  }
}

document.addEventListener('DOMContentLoaded', () => {
  new AudioPlayer();
});