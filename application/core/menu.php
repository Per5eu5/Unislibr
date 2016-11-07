<?php
error_reporting(E_ERROR);

function menu() {
    if(!isset($_COOKIE["usertype"])) {
        default_menu();
    }
    elseif ($_COOKIE["usertype"] == 1)
        librarian_menu();
    else if ($_COOKIE["usertype"] == 2)
        reader_menu();

}

function default_menu() {
    print('<ul class="list">
            <li class="first "><a href="/">Главная</a></li>
            <li><a href="/login">Авторизация</a></li>
            <li class="last"><a href="/guest_book">Гостевая книга</a></li>
        </ul>');
}

function reader_menu(){
    print('<ul class="list">
            <li class="first "><a href="/">Главная</a></li>
            <li><a href="">Профиль</a>
                <ul>
                    <li><a href="/reader">Абонемент</a>
                    <li><a href="/settings">Изменение данных профиля</a>
                </ul>
			</li>
            <li><a href="/search_book">Поиск книги</a>
            <li class="last"><a href="/guest_book">Гостевая книга</a></li>
            <li class="last"><a href="/faq">FAQ</a></li>
            <li><a href="/reader/logout">Выход</a></li>
        </ul>');
}

function librarian_menu(){
    print('<ul class="list">
            <li class="first "><a href="/">Главная</a></li>
            <li><a href="">Настройки</a>
                <ul>
                <li class="first "><a href="/admin">Изменение данных читателей</a></li>
                <li><a href="/settings">Изменение данных профиля</a>
                <li class="last"><a href="/edit_catalogs">Редактирование справочников</a></li>
                </ul>
			</li>
            <li class="last"><a href="">Регистрация</a>
                <ul>
                    <li><a href="/registration_reader">Регистрация читателя</a></li>
                    <li><a href="/registration_librarian">Регистрация библиотекаря</a></li>
                </ul>
            </li>
             <li class="last"><a href="/graph_librgrades">Графики и отчеты</a></li>
            <li class="last"><a href="/guest_book">Гостевая книга</a></li>
            <li class="last"><a href="/faq">FAQ</a></li>
            <li><a href="admin/logout">Выход</a></li>
        </ul>');
}