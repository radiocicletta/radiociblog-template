Radiociblog default template
============================

Questo repository è un testbed per tutte le prove di template per il
sito radiocicletta.it.

Ogni branch è una proposta di layout da usare per il sito.

Ogni nuovo template va costruito sulla base delle informazioni raccolte sul wiki di questo progetto https://github.com/radiocicletta/radiociblog-template/wiki

Aggiungere nuovi layout
-----------------------

Ogni layout proposto va inserito come nuovo branch di questo repository.
La gerarchia delle directory va mantenuta il più possibile simile a quella
di questo layout. In particolare è preferibile che siano presenti:

* una pagina ``index.html`` che mostri il layout di default della pagina
principale
* una pagina ``blog.html`` che mostri la pagina di default di un blog
* una pagina ``large.html`` che mostri una pagina i cui contenuti occupano
il maggiore spazio disponibile nella griglia 960 a 12 colonne
* una directory css per gli stili
* evntuale directory js per gli script

eventuali altre directory e file possono essere presenti e devono essere
descritti all'interno di questo file README.


per lavorare su questo repository sono necessari:

* un account su github.com
* git versione 1.8 o superiore
* editor e terminale a scelta

Clonare il repository ``master`` in locale

```bash
    $ git clone http://github.com/radiocicletta/radiociblog-template
```

Entrare nel repository e creare un nuovo branch locale col nome del template

```bash
    $ cd radiociblog-template
    $ git branch nuovotemplate
```

Passare al branch appena creato e modificarlo a proprio piacere

```bash
    $ git checkout nuovotemplate
    Switched to branch 'nuovotemplate'
    $
```

Una volta modificato, committare le proprie modifiche e pusharle al nuovo
branch appena creato

```bash
    $ git add [file 1 ... file N]
    $ git commit
    $ git push -u origin nuovotemplate
```

ogni modifica successiva andrà committata al branch remoto nella maniera
del punto precedente, omettendo l'opzione *-u*

carloratm proposal template
---------------------------

This template needs [compass](http://compass-style.org/) and
[scss-lint](https://github.com/brigade/scss-lint) to run.

You can install them with:

```bash
    $ gem install compass
    $ gem install scss-lint
```

To test this template, just run:

```bash
    $ ./dev.sh
```

Then visit `http://0.0.0.0:8000/`

