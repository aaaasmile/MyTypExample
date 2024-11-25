#let data_dct = json("data.json")

#let get_footer_text(dataj) = {
    dataj.bank_details.name + " - " + dataj.bank_details.iban
}

#let do_report_en(dataj) = block[
    #box(height: 8em)[
        #columns(2, gutter: 25em)[
            #dataj.sender.line1 \
            #dataj.sender.line2 \
            #dataj.sender.line3 \
            #colbreak()
            #dataj.reciver.line1 \
            #dataj.reciver.line2 \
            #dataj.reciver.line3 \
        ]
    ]

    #align(right)[ 
        #dataj.date_sig
    ]
    #v(2em)
    #strong(text(14pt)[
    Our reference
    ]): #dataj.invoice_no \
    Contract No: #dataj.contract_no \
    #v(2em)
    #dataj.salutation\
    #v(2em)
    After a long thinking process we would like to inform you, that an unexpected expense
    is charged to you. It is an amount of *#dataj.add_charg.amount* #dataj.add_charg.currency. Of course, peanuts for you.\
    Please avoid to discuss this amount and pay in cash as soon as possible, otherwise we have to inform Marsellus Wallace.

    #v(10em)
    Form without signature
]// end do_report_en

#let do_report_de(dataj) = block[
    // TODO DE layout
    to be done DE
]// end do_report_de

#let do_report_fr(dataj) = block[
    // TODO DE layout
    to be done FR
]// end do_report_de

#let select_lang_layout(dataj) = {
    if dataj.language == "de"{
        do_report_de(dataj)
    } else if dataj.language == "fr"{
        do_report_fr(dataj)
    } else {
        do_report_en(dataj)
    }
}

#set page(
    //margin: (bottom: 15pt),
    footer: context [
        #set align(center)
        #set text(8pt)
        #get_footer_text(data_dct)
    ]
)

#select_lang_layout(data_dct)



