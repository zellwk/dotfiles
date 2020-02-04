; ------
; Commonly used
; ------
:*:;em1::zellwk@gmail.com
:*:;em2::zell@zellwk.com
:*:;add::Blk 207 Serangoon Central #03-190
:*:;sg::Singapore
:*:;web::https://zellwk.com
:*:;b;::https://zellwk.com/blog/
:*:;js;::JavaScript
:*:;ljs;::Learn JavaScript
:*:;ljsl::https://learnjavascript.today
:*:;ljss::https://students.learnjavascript.today
:*:;vs;::Visual Studio Code

; ---------------
; General Writing
; ---------------
:*:;tm::™
::;idk:: ¯\_(ツ)_/¯
:*:;idku:: ~<div class="kaomoji">¯\_(ツ)_/¯</div>~

; -----------------
; Dates for writing
; -----------------
:*:;d0:: ; Today
FormatTime, today,, dd MMMM yyyy
SendInput, %today%
return

:*:;d-1::  ; Yesterday
yesterday :=
yesterday += -1, days
FormatTime, yesterdayString, %yesterday%, dd MMMM yyyy
SendInput %yesterdayString%
return

; ------------
; For blogging
; ------------
:*:;more::<{!}--more-->
:*:;chtml::<{!}--  -->
:*:;figg::
(
<figure role="figure">
  <img src="/images/2020/" alt="">
</figure>
)
