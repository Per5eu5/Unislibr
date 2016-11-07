<?php
class Session {
    public static function init() {
        @session_start();
    }

    public static function set($key, $value) {
        $_SESSION[$key] = $value;
    }

    public static function get($key) {
        if(isset($_SESSION[$key]))
            return $_SESSION[$key];
    }

    public static function destroy() {
        setcookie('usertype', '', time() - 3600, '/');
        setcookie('idreader', '', time() - 3600, '/');
        setcookie('idlibr', '', time() - 3600, '/');
        // unset($_SESSION);
        session_destroy();
    }
}