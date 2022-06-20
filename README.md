# Translator

Translate arbitrary text into the language of your choice.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'translator', github: 'rnzdoj/translator'
```

And then execute:

    $ bundle install

## Usage

- Create an initializer called, `translator.rb` and define this format
```ruby
Translator.configure do |config|
  config.authentication_key = ENV['RAPID_API_KEY']
  config.source_language = 'en'
  config.target_language = 'de'
end
```
- Kindly ensure that the secrets are passed from encrypted credentials and not hardcoded anywhere in your source.
- Once you have defined this, you can then use the the gem to translate arbitrary text this way.
```ruby
Translator::Text.translate('Hello World')
```

## Supported Languages
### Language - ISO-639-1 Code

- Afrikaans af
- Albanian sq
- Amharic am
- Arabic ar
- Armenian hy
- Azerbaijani az
- Basque eu
- Belarusian be
- Bengali bn
- Bosnian bs
- Bulgarian bg
- Catalan ca
- Cebuano ceb (ISO-639-2)
- Chinese (Simplified) zh-CN (BCP-47)
- Chinese (Traditional) zh-TW (BCP-47)
- Corsican co
- Croatian hr
- Czech cs
- Danish da
- Dutch nl
- English en
- Esperanto eo
- Estonian et
- Finnish fi
- French fr
- Frisian fy
- Galician gl
- Georgian ka
- German de
- Greek el
- Gujarati gu
- Haitian Creole ht
- Hausa ha
- Hawaiian haw (ISO-639-2)
- Hebrew he**
- Hindi hi
- Hmong hmn (ISO-639-2)
- Hungarian hu
- Icelandic is
- Igbo ig
- Indonesian id
- Irish ga
- Italian it
- Japanese ja
- Javanese jw
- Kannada kn
- Kazakh kk
- Khmer km
- Korean ko
- Kurdish ku
- Kyrgyz ky
- Lao lo
- Latin la
- Latvian lv
- Lithuanian lt
- Luxembourgish lb
- Macedonian mk
- Malagasy mg
- Malay ms
- Malayalam ml
- Maltese mt
- Maori mi
- Marathi mr
- Mongolian mn
- Myanmar (Burmese) my
- Nepali ne
- Norwegian no
- Nyanja (Chichewa) ny
- Pashto ps
- Persian fa
- Polish pl
- Portuguese (Portugal, Brazil) pt
- Punjabi pa
- Romanian ro
- Russian ru
- Samoan sm
- Scots Gaelic gd
- Serbian sr
- Sesotho st
- Shona sn
- Sindhi sd
- Sinhala (Sinhalese) si
- Slovak sk
- Slovenian sl
- Somali so
- Spanish es
- Sundanese su
- Swahili sw
- Swedish sv
- Tagalog (Filipino) tl
- Tajik tg
- Tamil ta
- Telugu te
- Thai th
- Turkish tr
- Ukrainian uk
- Urdu ur
- Uzbek uz
- Vietnamese vi
- Welsh cy
- Xhosa xh
- Yiddish yi
- Yoruba yo
- Zulu zu

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
