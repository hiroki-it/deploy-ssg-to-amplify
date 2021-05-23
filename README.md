# deploy-ssg-to-amplify

## 概要

AmplifyはAWSリソースのフレームワークです．

Amplifyを用いて，Nuxt.jsのSSGアプリのCI/CDを構築しました．

## AmplifyによるCI/CDとは

Amplifyの静的サイトホスティング機能はS3とCloudFrontから構成されています．

その他の機能については，Black Beltの資料を参考に．

参考：https://d1.awsstatic.com/webinars/jp/pdf/services/20200520_AWSBlackBelt_Amplify_A.pdf

AmplifyのCI/CDは，プロジェクトルートに配置された [amplify.yml](https://github.com/hiroki-it/deploy-ssg-to-amplify/blob/develop/amplify.yml) ファイルで定義します．

AmplifyはURLを発行し，このURLは一つのS3に紐づいています．

リクエスト元の情報に基づいて，動的にオリジンを切り替えることはできないため，レスポンシブなサイトでない場合は，環境の数だけAmplifyのアプリケーションが必要になります．

今回，レスポンシブでないPCとSPの二つ環境が存在している想定で，CI/CDを構築しました．
