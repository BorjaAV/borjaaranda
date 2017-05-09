//Shortcode para login donde quieras
function ayudawp_formulario_login_shortcode() {
 if ( is_user_logged_in() )
 return '';
 
 return wp_login_form( array( 'echo' => false ) );
}
 
function ayudawp_add_shortcodes() {
 add_shortcode( 'ayudawp_formulario_login', 'ayudawp_formulario_login_shortcode' );
}
 
add_action( 'init', 'ayudawp_add_shortcodes' );
