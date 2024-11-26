#let g_data_dct = json("data.json")

#let get_footer_text() = {[
    #g_data_dct.bank_details.name - #g_data_dct.bank_details.iban
]}

#let do_report_en() = block[
    #box(height: 8em)[
        #columns(2, gutter: 25em)[
            #g_data_dct.sender.line1 \
            #g_data_dct.sender.line2 \
            #g_data_dct.sender.line3 \
            #colbreak()
            #g_data_dct.reciver.line1 \
            #g_data_dct.reciver.line2 \
            #g_data_dct.reciver.line3 \
        ]
    ]

    #align(right)[ 
        #g_data_dct.date_sig
    ]
    #v(2em)
    #strong(text(14pt)[
    Our reference
    ]): #g_data_dct.invoice_no \
    Contract No: #g_data_dct.contract_no \
    #v(2em)
    #g_data_dct.salutation\
    #v(2em)
    After a long thinking process we would like to inform you, that an unexpected expense
    is charged to you. It is an amount of *#g_data_dct.add_charg.amount* #g_data_dct.add_charg.currency. Of course, peanuts for you.\
    Please avoid to discuss this amount and pay in cash as soon as possible, otherwise we have to inform Marsellus Wallace.

    #v(10em)
    Form without signature
]// end do_report_en

#let do_report_de() = block[
    #box(height: 8em)[
        #columns(2, gutter: 25em)[
            #g_data_dct.sender.line1 \
            #g_data_dct.sender.line2 \
            #g_data_dct.sender.line3 \
            #colbreak()
            #g_data_dct.reciver.line1 \
            #g_data_dct.reciver.line2 \
            #g_data_dct.reciver.line3 \
        ]
    ]

    #align(right)[ 
        #g_data_dct.date_sig
    ]
    #v(2em)
    #strong(text(14pt)[
    Unsere Referenz
    ]): #g_data_dct.invoice_no \
    Vertrag No: #g_data_dct.contract_no \
    #v(2em)
    #g_data_dct.salutation\
    #v(2em)
    Nach langem Überlegen möchten wir Ihnen mitteilen, dass eine unerwartete Ausgabe
    zu Ihren Lasten geht. Es handelt sich um einen Betrag von  *#g_data_dct.add_charg.amount* #g_data_dct.add_charg.currency. Für Sie natürlich Peanuts.\
    Bitte vermeiden Sie es, diesen Betrag zu diskutieren und zahlen Sie so schnell wie möglich in bar, da wir sonst Marsellus Wallace informieren müssen.

    #v(10em)
    Formular ohne Unterschrift
]// end do_report_de

#let do_report_fr() = block[
    // TODO DE layout
    to be done FR
]// end do_report_de

#let select_lang_layout() = {
    if g_data_dct.language == "de"{
        do_report_de()
    } else if g_data_dct.language == "fr"{
        do_report_fr()
    } else {
        do_report_en()
    }
}

#set page(
    //margin: (bottom: 15pt),
    footer: context [
        #set align(center)
        #set text(8pt)
        #get_footer_text()
    ]
)

#select_lang_layout()



