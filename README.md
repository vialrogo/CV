# CV
Victor Alberto Romero's Curriculum Vitae

## Compilation options

Compile with:

''' make <option> LANG=xx
'''

<option> can be _pdf_, _clean_ or _all_. xx is the code for the support language to compile.

## PO4A - Translate

Taken from http://po4a.alioth.debian.org/man/man7/po4a.7.php.en

### HOWTO begin a new translation?

This section presents the needed steps required to begin a new translation with po4a. The refinements involved in converting an existing project to this system are detailed in the relevant section.
To begin a new translation using po4a, you have to do the following steps:

* Extract the text which have to be translated from the original <master.doc> document into a new translation template <translation.pot> file (the gettext format). For that, use the po4a-gettextize program this way:
  $ po4a-gettextize -f <format> -m <master.doc> -p <translation.pot>

<format> is naturally the format used in the master.doc document. As expected, the output goes into translation.pot. Please refer to po4a-gettextize(1) for more details about the existing options.

* Actually translate what should be translated. For that, you have to rename the POT file for example to doc.XX.po (where XX is the ISO639 code of the language you are translating to, e.g. fr for French), and edit the resulting file. It is often a good idea to not name the file XX.po to avoid confusion with the translation of the program messages, but this your call. Don't forget to update the PO file headers, they are important.
The actual translation can be done using the Emacs' or Vi's PO mode, Lokalize (KDE based), Gtranslator (GNOME based) or whichever program you prefer to use for them (e.g. Virtaal).

If you wish to learn more about this, you definitively need to refer to the gettext documentation, available in the gettext-doc package.

 
### HOWTO change the translation back to a documentation file?

Once you're done with the translation, you want to get the translated documentation and distribute it to users along with the original one. For that, use the po4a-translate(1) program like that (where XX is the language code):
  $ po4a-translate -f <format> -m <master.doc> -p <doc.XX.po> -l <XX.doc>

As before, <format> is the format used in the master.doc document. But this time, the PO file provided with the -p flag is part of the input. This is your translation. The output goes into XX.doc.

Please refer to po4a-translate(1) for more details.  

### HOWTO update a po4a translation?

To update your translation when the original master.doc file has changed, use the po4a-updatepo(1) program like that:
  $ po4a-updatepo -f <format> -m <new_master.doc> -p <old_doc.XX.po>

(Please refer to po4a-updatepo(1) for more details)

Naturally, the new paragraph in the document won't get magically translated in the PO file with this operation, and you'll need to update the PO file manually. Likewise, you may have to rework the translation for paragraphs which were modified a bit. To make sure you won't miss any of them, they are marked as ``fuzzy'' during the process and you have to remove this marker before the translation can be used by po4a-translate. As for the initial translation, the best is to use your favorite PO editor here.

Once your PO file is up-to-date again, without any untranslated or fuzzy string left, you can generate a translated documentation file, as explained in the previous section.  


