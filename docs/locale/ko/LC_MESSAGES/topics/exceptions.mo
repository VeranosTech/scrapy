��          �               �     �     �     �     �     �  
   �  
          C        _     m     |     �  
   �     �  D   �  �   �  u   �  z   �  t   w  o   �  <   \     �  t  �     %     C     O     _     v  
     
   �     �  C   �     �     �            
        *  D   =  �   �  u   	  z   �	  t   �	  o   t
  <   �
     !   Built-in Exceptions reference CloseSpider DontCloseSpider Downloader middlewares DropItem Exceptions Extensions For example:: Here's a list of all exceptions included in Scrapy and their usage. IgnoreRequest Item pipelines NotConfigured NotSupported Parameters Spider middlewares The exception must be raised in the component's ``__init__`` method. The exception that must be raised by item pipeline stages to stop processing an Item. For more information see :ref:`topics-item-pipeline`. This exception can be raised by some components to indicate that they will remain disabled. Those components include: This exception can be raised by the Scheduler or any downloader middleware to indicate that the request should be ignored. This exception can be raised from a spider callback to request the spider to be closed/stopped. Supported arguments: This exception can be raised in a :signal:`spider_idle` signal handler to prevent the spider from being closed. This exception is raised to indicate an unsupported feature. the reason for closing Project-Id-Version: Scrapy 1.4
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
 Built-in Exceptions reference CloseSpider DontCloseSpider Downloader middlewares DropItem Exceptions Extensions For example:: Here's a list of all exceptions included in Scrapy and their usage. IgnoreRequest Item pipelines NotConfigured NotSupported Parameters Spider middlewares The exception must be raised in the component's ``__init__`` method. The exception that must be raised by item pipeline stages to stop processing an Item. For more information see :ref:`topics-item-pipeline`. This exception can be raised by some components to indicate that they will remain disabled. Those components include: This exception can be raised by the Scheduler or any downloader middleware to indicate that the request should be ignored. This exception can be raised from a spider callback to request the spider to be closed/stopped. Supported arguments: This exception can be raised in a :signal:`spider_idle` signal handler to prevent the spider from being closed. This exception is raised to indicate an unsupported feature. the reason for closing 