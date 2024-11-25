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

    #v(22em)
    #align(center)[#text(8pt)[
        #dataj.bank_details.name - IBAN #dataj.bank_details.iban
    ]]
]// end do_report

#do_report_en(json("data.json"))
