enum Resolução {
    case sd
    case hd
    case uhd
}


enum TipoMidia {
    case música (titulo: String, artista: String, duração: Int)
    case video (titulo: String, resolução: Resolução, duração: Int)
    case podcast (titulo: String, host: String, episodio: Int)
}


func exibirInformações(midia: TipoMidia) {
    switch midia {
    case .música(let título, let artista, let duração):
        print("Música: \(título), Artista: \(artista), Duração: \(duração) minutos")
    case .video(let título, let resolução, let duração):
        print("Vídeo: \(título), Resolução: \(resolução), Duração: \(duração) minutos")
    case .podcast(let título, let host, let episodio):
        print("Podcast: \(título), Host: \(host), Episódio: \(episodio)")
    }
}