# TimerApp

0초~60초 까지 `시간을 설정` 후, 설정한 시간이 지나면 `소리가 울리는` ios 어플리케이션.

<div>
    <span>
        <img src="https://user-images.githubusercontent.com/75922558/192914337-6784cf0b-ae0c-4fc5-bbee-b1b8384da7cb.png" width="180"/>
    </span>
    <span>
        <img src="https://user-images.githubusercontent.com/75922558/192914342-574aad27-5c5c-407d-a283-2cfc934d29bb.png" width="180"/>
    </span>
</div>

<br/>

## 🎥 타이머 작동 영상 (+소리)

<img src="https://user-images.githubusercontent.com/75922558/192914345-a8063945-4448-4186-999f-9ba2dd0597bb.gif" width="200"/>

<br/>

## 📋 기능

- 타이머 기능

  ```txt
  ⭐️ 스위프트의 Timer 객체 사용
  ```

  ```Swift
    // 타이머 객체 생성 (1초마다 반복실행)
    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { [weak self] _ in
          // code
    })
  ```

- 시스템 사운드 출력

  ```txt
  ⭐️ 스위프트의 AVFoundation 프레임워크 사용
  ```

  ```Swift
    import AVFoundation

    // ios 시스템사운드 사용
    AudioServicesPlaySystemSound(SystemSoundID(1322))
  ```

<br/>

## 🎨 UI

<details>
<summary>UIKit 사용</summary>
UIKit 프레임워크는 앱의 메인 이벤트 루프(Main Event Loop)를 실행하고 화면에 콘텐츠를 표시하며 여러 오브젝트를 제공한다.
</details>
<details>
<summary>Storyboard로 작성</summary>
Storyboard는 iOS 애플리케이션의 UI의 흐름을 시각적으로 표현한 것으로 화면의 내용과 화면과 화면 간의 연결을 보여준다.
</details>
<details>
<summary>Auto Layout 적용</summary>
오토 레이아웃(Auto Layout)이란, 제약조건(constraints)에 따라 뷰 계층 구조에 있는 모든 뷰의 크기와 위치를 동적으로 지정하는 것이다.
</details>
