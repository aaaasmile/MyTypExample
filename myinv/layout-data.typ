#let g_data_dct = json("data.json")

#let get_footer_text() = {[
    #g_data_dct.bank_details.name - #g_data_dct.bank_details.iban
]}

#let do_report() = block[
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
    Please avoid to discuss this amount and pay in cash (feel free to use the usual envelop) as soon as possible, otherwise we have to inform Marsellus Wallace. 

    #v(10em)
    Form without signature
]// end do_report

#set page(
    //margin: (bottom: 15pt),
    footer: context [
        #set align(center)
        #set text(8pt)
        #get_footer_text()
    ]
)

#do_report()



