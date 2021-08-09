<?php
/**
 * WordPress の基本設定
 *
 * このファイルは、インストール時に wp-config.php 作成ウィザードが利用します。
 * ウィザードを介さずにこのファイルを "wp-config.php" という名前でコピーして
 * 直接編集して値を入力してもかまいません。
 *
 * このファイルは、以下の設定を含みます。
 *
 * * MySQL 設定
 * * 秘密鍵
 * * データベーステーブル接頭辞
 * * ABSPATH
 *
 * @link https://ja.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// 注意:
// Windows の "メモ帳" でこのファイルを編集しないでください !
// 問題なく使えるテキストエディタ
// (http://wpdocs.osdn.jp/%E7%94%A8%E8%AA%9E%E9%9B%86#.E3.83.86.E3.82.AD.E3.82.B9.E3.83.88.E3.82.A8.E3.83.87.E3.82.A3.E3.82.BF 参照)
// を使用し、必ず UTF-8 の BOM なし (UTF-8N) で保存してください。

// ** MySQL 設定 - この情報はホスティング先から入手してください。 ** //
/** WordPress のためのデータベース名 */
define( 'DB_NAME', 'wp_db' );

/** MySQL データベースのユーザー名 */
define( 'DB_USER', 'root' );

/** MySQL データベースのパスワード */
define( 'DB_PASSWORD', 'root' );

/** MySQL のホスト名 */
define( 'DB_HOST', 'localhost' );

/** データベースのテーブルを作成する際のデータベースの文字セット */
define( 'DB_CHARSET', 'utf8mb4' );

/** データベースの照合順序 (ほとんどの場合変更する必要はありません) */
define( 'DB_COLLATE', '' );

/**#@+
 * 認証用ユニークキー
 *
 * それぞれを異なるユニーク (一意) な文字列に変更してください。
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org の秘密鍵サービス} で自動生成することもできます。
 * 後でいつでも変更して、既存のすべての cookie を無効にできます。これにより、すべてのユーザーを強制的に再ログインさせることになります。
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Ep1c. 2O;kq0;4~%V*Yb|Ux*?T^bX8KQ$o{(Azr0kj*J1=2q4|AKNC#8+]!q~atf' );
define( 'SECURE_AUTH_KEY',  '3 @,QKPwMS:!h%bto`l9(z7|.F^9_]dcyvYQQeMd{_/UD!tU!=N]2I$Cbn*kvGt7' );
define( 'LOGGED_IN_KEY',    '4|1)x~On[`<~fwIWK: &Yqu#tRJZu;8KM}eZ>M426r5` L}BA*n2H<, g025bC/o' );
define( 'NONCE_KEY',        '-5}V= &D/{~y}YxCP,iHGLSP01.)Qg} ::t w3C/Z?CZC;Ke%T58ma S D93(uPT' );
define( 'AUTH_SALT',        'n0WTqW..^G 5j;v_>mIPYP|#`.ANWm@G1QbtdmK4j`]BC VLB?y!eK,%acv$s&]L' );
define( 'SECURE_AUTH_SALT', 'YRGpB__p,7;3YH7V:WV21Y7##8Y?O yVn#9I`,-/TwV{}-W{%>3{=OY2pV@qBI/A' );
define( 'LOGGED_IN_SALT',   'DdbNFpl]>`Y<&Q27pf1#yREwh+stOf<.>bgc/)Z$yd6Vo]]p eMTJ1Rdp+LDb$H;' );
define( 'NONCE_SALT',       ',)?(u}>9KRD,U=[j>#D[BcG@&|0Ogluw3Ic=xc~V;MZA XLoBX+sFZLZ*jyDO$|a' );

/**#@-*/

/**
 * WordPress データベーステーブルの接頭辞
 *
 * それぞれにユニーク (一意) な接頭辞を与えることで一つのデータベースに複数の WordPress を
 * インストールすることができます。半角英数字と下線のみを使用してください。
 */
$table_prefix = 'wp_';

/**
 * 開発者へ: WordPress デバッグモード
 *
 * この値を true にすると、開発中に注意 (notice) を表示します。
 * テーマおよびプラグインの開発者には、その開発環境においてこの WP_DEBUG を使用することを強く推奨します。
 *
 * その他のデバッグに利用できる定数についてはドキュメンテーションをご覧ください。
 *
 * @link https://ja.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* カスタム値は、この行と「編集が必要なのはここまでです」の行の間に追加してください。 */



/* 編集が必要なのはここまでです ! WordPress でのパブリッシングをお楽しみください。 */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
