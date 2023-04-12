package colecao;

import java.util.Hashtable;

public class LivroRepository {
    private static LivroRepository instance = null;

    private Hashtable<Integer, Livro> livros = new Hashtable<Integer,Livro>();

    public int save(Livro livro) {
        if(livro.getId() == 0)
            livro.setId(livros.size() + 1);
        this.livros.put(livro.getId(), livro);
        return livro.getId();
    }

    public void remove(int id) {
        this.livros.remove(id);
    }

    public Hashtable<Integer, Livro> fetchAll() {
        return this.livros;
    }

    public Livro fetch(int id) {
        return this.livros.get(id);
    }

    private LivroRepository() {}

    public static LivroRepository getInstance() {
        if(instance == null)
            instance = new LivroRepository();
        return instance;
    }
}
