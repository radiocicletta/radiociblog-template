Radiociblog default template
============================

Questo repository è un testbed per tutte le prove di template per il
sito radiocicletta.it.

Ogni branch è una proposta di layout da usare per il sito.

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

1. clonare il repository attuale

    $ git clone http://github.com/radiocicletta/radiociblog-template

2. entrare nel repository e creare un nuovo branch locale col nome del template

    $ cd radiociblog-template
    $ git branch nuovotemplate

3. passare al branch appena creato e modificarlo a proprio piacere

    $ git checkout nuovotemplate
    Switched to branch 'nuovotemplate'
    $

4. una volta modificato, committare le proprie modifiche e pusharle al nuovo
branch appena creato

    $ git add [file 1 ... file N]
    $ git commit
    $ git push -u origin nuovotemplate

5. ogni modifica successiva andrà committata al branch remoto nella maniera
del punto 4, omettendo l'opzione *-u*
