��    /      �                �    C   �     �          +     ;     N  4   `  �   �  t     	   �  	   �  	   �  	   �     �     �  	   �     �     �  �   �  |   �  
     I        a  $   o  $   �  #   �  :   �     	  j   '	  �   �	  Z   �
    �
     �  %        >  g   Z  !   �     �  �      u   �  5   �     .     >     T     f  t  �  �  �  C   �     �     �          #     6  4   H  �   }  t     	   z  	   �  	   �  	   �     �     �  	   �     �     �  �   �  |   w  
   �  I   �     I  $   W  $   |  #   �  :   �        j     �   z  Z   k    �     �  %         &  g   B  !   �     �  �   �  u   j  5   �          &     <     N   Although Python makes sending e-mails relatively easy via the `smtplib`_ library, Scrapy provides its own facility for sending e-mails which is very easy to use and it's implemented using `Twisted non-blocking IO`_, to avoid interfering with the non-blocking IO of the crawler. It also provides a simple API for sending attachments and it's very easy to configure, with a few :ref:`settings <topics-email-settings>`. And here is how to use it to send an e-mail (without attachments):: Default: ``'localhost'`` Default: ``'scrapy@localhost'`` Default: ``25`` Default: ``False`` Default: ``None`` Enforce connecting using an SSL encrypted connection Enforce using STARTTLS. STARTTLS is a way to take an existing insecure connection, and upgrade it to a secure connection using SSL/TLS. Instantiate using a Scrapy settings object, which will respect :ref:`these Scrapy settings <topics-email-settings>`. MAIL_FROM MAIL_HOST MAIL_PASS MAIL_PORT MAIL_SSL MAIL_TLS MAIL_USER Mail settings MailSender class reference MailSender is the preferred class to use for sending emails from Scrapy, as it uses `Twisted non-blocking IO`_, like the rest of the framework. Or you can instantiate it passing a Scrapy settings object, which will respect the :ref:`settings <topics-email-settings>`:: Parameters Password to use for SMTP authentication, along with :setting:`MAIL_USER`. Quick example SMTP host to use for sending emails. SMTP port to use for sending emails. Send email to the given recipients. Sender email to use (``From:`` header) for sending emails. Sending e-mail There are two ways to instantiate the mail sender. You can instantiate it using the standard constructor:: These settings define the default constructor values of the :class:`MailSender` class, and can be used to configure e-mail notifications in your project without writing any code (for those extensions and code that uses :class:`MailSender`). User to use for SMTP authentication. If disabled no SMTP authentication will be performed. an iterable of tuples ``(attach_name, mimetype, file_object)`` where  ``attach_name`` is a string with the name that will appear on the e-mail's attachment, ``mimetype`` is the mimetype of the attachment and ``file_object`` is a readable file object with the contents of the attachment enforce using SMTP STARTTLS enforce using a secure SSL connection the MIME type of the e-mail the SMTP host to use for sending the emails. If omitted, the :setting:`MAIL_HOST` setting will be used. the SMTP pass for authentication. the SMTP port to connect to the SMTP user. If omitted, the :setting:`MAIL_USER` setting will be used. If not given, no SMTP authentication will be performed. the address used to send emails (in the ``From:`` header). If omitted, the :setting:`MAIL_FROM` setting will be used. the character encoding to use for the e-mail contents the e-mail body the e-mail recipients the e-mails to CC the subject of the e-mail Project-Id-Version: Scrapy 1.4
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-12-13 13:17+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ko
Language-Team: ko <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 Although Python makes sending e-mails relatively easy via the `smtplib`_ library, Scrapy provides its own facility for sending e-mails which is very easy to use and it's implemented using `Twisted non-blocking IO`_, to avoid interfering with the non-blocking IO of the crawler. It also provides a simple API for sending attachments and it's very easy to configure, with a few :ref:`settings <topics-email-settings>`. And here is how to use it to send an e-mail (without attachments):: Default: ``'localhost'`` Default: ``'scrapy@localhost'`` Default: ``25`` Default: ``False`` Default: ``None`` Enforce connecting using an SSL encrypted connection Enforce using STARTTLS. STARTTLS is a way to take an existing insecure connection, and upgrade it to a secure connection using SSL/TLS. Instantiate using a Scrapy settings object, which will respect :ref:`these Scrapy settings <topics-email-settings>`. MAIL_FROM MAIL_HOST MAIL_PASS MAIL_PORT MAIL_SSL MAIL_TLS MAIL_USER Mail settings MailSender class reference MailSender is the preferred class to use for sending emails from Scrapy, as it uses `Twisted non-blocking IO`_, like the rest of the framework. Or you can instantiate it passing a Scrapy settings object, which will respect the :ref:`settings <topics-email-settings>`:: Parameters Password to use for SMTP authentication, along with :setting:`MAIL_USER`. Quick example SMTP host to use for sending emails. SMTP port to use for sending emails. Send email to the given recipients. Sender email to use (``From:`` header) for sending emails. Sending e-mail There are two ways to instantiate the mail sender. You can instantiate it using the standard constructor:: These settings define the default constructor values of the :class:`MailSender` class, and can be used to configure e-mail notifications in your project without writing any code (for those extensions and code that uses :class:`MailSender`). User to use for SMTP authentication. If disabled no SMTP authentication will be performed. an iterable of tuples ``(attach_name, mimetype, file_object)`` where  ``attach_name`` is a string with the name that will appear on the e-mail's attachment, ``mimetype`` is the mimetype of the attachment and ``file_object`` is a readable file object with the contents of the attachment enforce using SMTP STARTTLS enforce using a secure SSL connection the MIME type of the e-mail the SMTP host to use for sending the emails. If omitted, the :setting:`MAIL_HOST` setting will be used. the SMTP pass for authentication. the SMTP port to connect to the SMTP user. If omitted, the :setting:`MAIL_USER` setting will be used. If not given, no SMTP authentication will be performed. the address used to send emails (in the ``From:`` header). If omitted, the :setting:`MAIL_FROM` setting will be used. the character encoding to use for the e-mail contents the e-mail body the e-mail recipients the e-mails to CC the subject of the e-mail 