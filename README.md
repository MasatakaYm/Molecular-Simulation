# 分子シミュレーションノート
## はじめに
このノートは, 勉強した分子動力学シミュレーションの基礎と関連知識をまとめ, 理解を深め, そしてどう理解したのかを整理することを目的に作成した.

<!---
<a href="https://github.com/MasatakaYm/molecular-simulation"> <div class="btn-square"><i class="fab fa-github"></i> View on GitHub</div></a>
--->

[PDF (Written in Japanese)](https://masatakaym.github.io/documents/Molecular-Simulation/main.pdf)
## 目次

執筆状況を示すための指標として、目次に絵文字を添える.
- 🍊(Mikan): 未完成の項目, 執筆中, Todo.

## 第1部 物理の復習

### [1. 解析力学の復習](https://masatakaym.github.io/documents/Molecular-Simulation/analytical-mechanics.pdf)
1. ラグランジュ形式
2. ハミルトン形式
3. 拘束条件付きの運動方程式

### [2. 統計力学の復習](https://masatakaym.github.io/documents/Molecular-Simulation/statistical-mechanics.pdf)
1. 分布関数、リウビルの定理
2. 等重率の原理とミクロカノニカルアンサンブル
3. カノニカルアンサンブル
4. 定温定圧アンサンブル
5. 熱力学量: 温度
6. 熱力学量: 圧力

## 第2部 分子シミュレーションの方法論

### [3. 分子動力学シミュレーションの基礎](https://masatakaym.github.io/documents/Molecular-Simulation/simulation-basic.pdf)
1. ミクロカノニカルアンサンブルでのシミュレーション
2. 2体力近似
3. 周期境界条件
4. 相互作用のカットオフ
5. 単位の無次元化
6. 分子動力学シミュレーションの手順
7. 🍊初期速度の与え方

### [4. 原子間・分子間相互作用](https://masatakaym.github.io/documents/Molecular-Simulation/force-field.pdf)
1. 生体分子に対する全原子モデル
2. 様々なポテンシャル関数とその力・ヴィリアルの表式
   1. 結合長ポテンシャル: 調和振動子型
   2. 結合長ポテンシャル: ガウス型
   3. 結合角ポテンシャル: 調和振動子型
   4. フィルター関数
   5. 二面角ポテンシャル: フーリエ級数型
   6. 二面角ポテンシャル: ガウス型
   7. ファンデルワールス相互作用: 12-6型
   8. 静電相互作用
   9. モースポテンシャル
3. 計算ノート: 力・ヴィリアルの導出

### [5. 長距離相互作用の計算方法: Ewaldの方法](https://masatakaym.github.io/documents/Molecular-Simulation/ewald.pdf)
1. Ewaldの方法
2. Particle Mesh Ewald (PME)法
3. 静電相互作用を実装したときのメモ
4. 付録 (B-spline関数について)

### [6. 運動方程式の時間発展](https://masatakaym.github.io/documents/Molecular-Simulation/integrator.pdf)
1. 時間積分のアルゴリズム
   -  オイラー法, 修正オイラー法
   -  ベルレ法, リープフロッグ法, 速度ベルレ法
   - 🍊 予測子・修正子法
2. ベルレ法によるエネルギーの誤差
3. 時間発展演算子による取り扱い
4. 時間反転多時間刻み法(RESPA法)

### [7. シンプレクティック分子動力学法](https://masatakaym.github.io/documents/Molecular-Simulation/symplectic.pdf)
1. ハミルトンの正準方程式とシンプレクティック条件
2. シンプレクティック分子動力学法
3. シンプレクティック分子動力学法における保存量

### [8. 拡張系の方法](https://masatakaym.github.io/documents/Molecular-Simulation/extended-phase-space-method.pdf)
1. 温度制御: 能勢・Hoover 熱浴
2. 温度制御: 能勢・Poincare 熱浴
3. 圧力制御: Andersenの方法
4. 圧力制御: パリネロ・ラマンの方法
5. 温度・圧力制御: 能勢・Andersenの方法
6. 温度・圧力制御: Martyna-Tobias-Klein (MTK)の運動方程式
7. 温度・圧力制御: 能勢・ポアンカレ・Andersenの方法

### [9. 拘束条件付き分子動力学法](https://masatakaym.github.io/documents/Molecular-Simulation/constrain-dynamics.pdf)
1. ホロノミックな拘束条件の具体的な例
2. 座標に対する拘束動力学: ベルレ法による時間発展とSHAKE法
3. 速度と座標に対する拘束動力学: 速度ベルレ法による時間発展とRATTLE法

### [10. 剛体の分子動力学法](https://masatakaym.github.io/documents/Molecular-Simulation/rigid-body-MD.pdf)
1. 剛体運動の古典力学的記述
2. 剛体運動の解析力学的記述
3. 剛体の回転運動に対する分子動力学アルゴリズム

### 11. 🍊ガウス束縛法
   1. 温度制御
   2. 圧力制御
   3. 温度・圧力制御

### 12. 🍊その他の温度・圧力制御
   1. Berensenの方法

### [13. マルコフ連鎖モンテカルロ法](https://masatakaym.github.io/documents/Molecular-Simulation/markov-chain-monte-carlo.pdf)
1. マルコフ連鎖
2. マルコフ連鎖の平衡分布への収束性
3. 遷移確率行列の構築法


### [14. 拡張アンサンブル法](https://masatakaym.github.io/documents/Molecular-Simulation/generalized-ensemble.pdf)
1. マルコフ連鎖モンテカルロ法
2. マルチカノニカル法
3. 焼き戻し法
4. レプリカ交換法
5. レプリカ置換法
6. 🍊定温定圧アンサンブルにおける拡張アンサンブル法


## 第3部 分子モデリング
### [15. 分子モデリング](https://masatakaym.github.io/documents/Molecular-Simulation/modeling-molecules.pdf)
1. 濃度換算
2. 水の初期配置について
3. 一般化螺旋集合 (GSS: Generalized Spiral Set)
4. 🍊水のモデル
5. 🍊トポロジーの判定: 結合原子リストから結合角・二面角・インプロパーを判定する

## 第4部 分子シミュレーションの解析方法

### [16. 最重法](https://masatakaym.github.io/documents/Molecular-Simulation/reweighting-technique.pdf)
1. 単ヒストグラム再重法 (Single-Histogram Reweighting Technique)
2. 多ヒストグラム再重法 (WHAM: Weighted Histgram Analysis Method)
3. 多状態ベネット受容比法 (MBAR: Multistate Bennett Acceptance Ration Estimator)
4. リウェイティング tips

### [17. 関数近似と補完法](https://masatakaym.github.io/documents/Molecular-Simulation/interpolation-methods.pdf)
1. 線形最小二乗法
2. スプライン補完

### [18. 主成分解析 (Principal Component Analysis; PCA)](https://masatakaym.github.io/documents/Molecular-Simulation/pca.pdf)
1. 主成分解析の基礎
2. 主成分解析のタンパク質への応用
3. PCAの計算例

### [19. タンパク質の二次構造判定: Dictionary of Protein Secondary Structure (DSSP)](https://masatakaym.github.io/documents/Molecular-Simulation/dssp.pdf)
1. 水素結合による構造
2. 幾何構造

### [20. 自己相関関数](https://masatakaym.github.io/documents/Molecular-Simulation/auto-correlation-function.pdf)
1. 自己相関関数の定義
2. 解析的に自己相関関数が計算できる関数の例
3. 🍊自己相関関数と物理

### [21. 慣性半径](https://masatakaym.github.io/documents/Molecular-Simulation/radius-of-gyration.pdf)

### [22. 最小二乗偏差(RMSD: Root Mean Square Deviation)](https://masatakaym.github.io/documents/Molecular-Simulation/rmsd.pdf)
1. 並進移動の計算
2. Lagrange未定乗数法を使う場合
3. 特異値分解を用いた方法
4. 四元数を用いる方法
5. 補足: 四元数

### [23. 溶媒接触表面積(SASA: Solvent Accessible Surface Ares)](https://masatakaym.github.io/documents/Molecular-Simulation/solvent-accessible-surface-area.pdf)


### [24. 熱力学量の算出](https://masatakaym.github.io/documents/Molecular-Simulation/thermodynamics-quantities.pdf)
1. 熱力学量
2. Hwleyの方程式

----
### 参考文献

本ノートは総合研究大学院大学の講義, 分子科学研究所奥村Gのセミナー資料を参考にしている。
1. 総合研究大学院大学 物理科学研究科, 大学院講義 理論化学 (2015).
1. 総合研究大学院大学 物理科学研究科, 大学院講義 生体分子シミュレーション入門 (2016).
1. 福井大学 大学院工学研究科, 分子科学特別講義 分子動力学シミュレーション (2018) (講師: 奥村久士).

以上の講義・セミナー資料に関連する日本語の出版物として

1. 奥村久士. 第1回：能勢の熱浴と能勢・フーバー熱浴. アンサンブル, Vol. 10, No. 4, pp. 29-33, 2008.
2. 奥村久士. 第2回：シンプレクティック解法と能勢・ポアンカレ熱浴. アンサンブル, Vol. 11, No. 1, pp. 35-40, 2009.
3. 奥村久士. 第3回：速度スケーリング法, ガウス束縛法, ベレンゼン熱浴. アンサンブル, Vol. 11, No. 2, pp. 43-46, 2009.
4. 奥村久士. 第4回：アンダーセンの方法と能勢・アンダーセンの方法. アンサンブル, Vol. 11, No.3, pp. 22-26, 2009.
5. 奥村久士. 第5回：パリネロ・ラーマンの方法, 圧力一定のガウス束縛法, 圧力一定のベレンゼンの方法. アンサンブル, Vol. 11, No. 4, pp. 26-30, 2009.

があげられる.

分子シミュレーションの教科書として定評のある, 以下の文献も参考にした.

1. 上田顯, 分子シミュレーション --古典系から量子系の手法まで --. 裳華房, 2003.
1. 岡崎進, 吉井範行. コンピュータ・シミュレーションの基礎 第2版 --分子のミクロな性質を解明するために--. 化学同人, 2000.
1. 吉川大弘, 石渕久生, 三木光範, 廣安知之, 岡本祐幸. 計算科学講座 超多自由度系の最適化. 共立出版, 2013.
1. Mark E. Tuckerman. Statistical Mechanics: Theory and Molecular Simulation. Oxford University Press, 2010.
1. Daan Frenkel and Berend Smit. Understanding Molecular Simulation: From Algorithms to Applications. Academic press, 2002.
1. Michael P Allen and Dominic J. Tildesley. Computer Simulation of Liquids: Second Edition. Oxford University Press, 2017.
