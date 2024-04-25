movies = [
    {
        :title => 'O Bicho Vai Pegar', :rating => 'L', :release_date => '2006-10-06', :description => 'Boog (Martin Lawrence) é um urso pardo domesticado, que vive na pacata cidade de Timberline. Ele é a grande estrela dos shows ecológicos de sua cidade, sendo que à noite desfruta das acomodações da garagem de Beth (Debra Messing), uma guarda florestal que o criou desde que era filhote. Porém nem todos gostam de Boog. Shaw (Gary Sinise) é um deles, pois acredita que os animais estão conspirando contra os humanos. Em uma de suas caçadas ele traz à cidade Elliot (Ashton Kutcher), um cervo de um único chifre que ainda está vivo. Após vários pedidos, Boog decide ajudá-lo e solta Elliot. Querendo retribuir o favor, Elliot segue Boog até sua casa e decide libertá-lo de sua garagem, a qual considera como sendo seu cativeiro.'
    },
    {
        :title => 'O Bicho Vai Pegar 2', :rating => 'L', :release_date => '2009-01-28', :description => 'Elliot está totalmente apaixonado por Giselle e eles estão com o casamento marcado. Quando Salcicha é raptado por um grupo de animais domésticos mimados que querem devolvê-lo aos seus antigos donos, ele vai ter que adiar a cerimônia para ajudar o amigo. Junto com Boog, Elliot, McSquizzy, Buddy e as outras animais da floresta, Elliot vai viver uma grande aventura.'
    },
    {
        :title => 'O Bicho Vai Pegar 3', :rating => 'L', :release_date => '2011-03-02', :description => 'Decepcionado com sua turma, que prefere cuidar das obrigações familiares a participar de sua viagem anual, Boog parte sozinho e acaba dentro de um picadeiro de circo. Ao trocar de lugar com um artista e se apaixonar por uma russa ele aprende que talvez não seja preciso escolher entre a família e os amigos.'
    },
    {
        :title => 'O Bicho Vai Pegar 4', :rating => 'L', :release_date => '2015-03-08', :description => 'Após ouvir Elliot contando sobre a lenda de um lobisomen que vive na floresta nacional de Timberline, Boog fica assutado com a história e decide não ir a viagem de acampamento anual que fazem no verão até ter certeza que o lobisomen não existe. Determinado a ajudar Boog, Elliot se junta com os outros amigos da floresta para desvendar o mistério da lenda.'
    }]
movies.each do |movie|
    filme = Movie.new(movie)
    puts filme
    filme.save
end