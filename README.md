# PDF2MD

_Marker-pdf 및 Ollama를 사용하여 pdf 논문 또는 문서를 markdown으로 변환하고, 한국어 번역까지 수행하는 스크립트_

![](PDF2MD.png)

## Prerequisites

### 1. Marker-pdf API Server (pdf to markdown converter)
* https://github.com/datalab-to/marker
* 필요시 로컬에 설치해서 사용 가능
* `Marker API` 서버가 실행되고 있어야 함

### 2. Ollama (Private LLM for translation)
* https://ollama.com/
* 로컬에 설치해서 사용 가능
* 번역 성능 및 품질을 보장하려면 가능한 큰 모델을 사용하는 것을 추천
* 중소형 모델 중에서는 "gpt-oss:20b" 모델 추천
* `ollama serve`가 실행되고 있어야 함

### 3. Quarto (pdf renderer)
* https://github.com/quarto-dev/quarto-cli
* 공학용 문서 변환기
* Pandoc 및 LaTeX을 별도로 직접 설치해서 셋팅하는 것 보다 훨씬 간편하고 가벼움
* Quarto를 설치하면 그 안에 Pandoc이 내장 및 설정이 완료되어 있음
* 수학식 표현에 LaTeX 대신 Typst 사용 가능
* scoop로 설치할 경우:

```
scoop install extras/quarto
```

### 4. Fonts (for pdf rendering)
* [Noto Sans KR](https://fonts.google.com/noto/specimen/Noto+Sans+KR?selection.family=Noto+Sans+KR:wght@100..900|Noto+Serif+KR:wght@200..900)
* [Noto Serif KR](https://fonts.google.com/noto/specimen/Noto+Serif+KR?selection.family=Noto+Sans+KR:wght@100..900|Noto+Serif+KR:wght@200..900)
* [Noto Sans Mono](https://fonts.google.com/selection?selection.family=Noto+Sans+KR:wght@100..900|Noto+Serif+KR:wght@200..900&query=Noto+Sans+Mono+KR)

### 5. uv package manager for python
* https://github.com/astral-sh/uv
* scoop로 설치할 경우:

```
scoop install main/uv
```


# How to use

```
PDF2MD.bat
```
