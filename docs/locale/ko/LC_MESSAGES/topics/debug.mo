��          �               L  �   M  S   G     �  >   �  t   �  6   a     �  �   �     |     �     �  /   �  �   �  $  �  u   �  T        u  �   �  t  5	  �   �
  S   �     �  >   
  t   I  6   �     �  �   �     �     �     �  /     �   4  $  �  u     T   }    �  �   �   Basically this is a simple spider which parses two pages of items (the start_urls). Items also have a details page with additional information, so we use the ``meta`` functionality of :class:`~scrapy.http.Request` to pass a partially populated item. Checking items scraped from a single start_url, can also be easily achieved using:: Debugging Spiders For more information, check the :ref:`topics-logging` section. Fortunately, the :command:`shell` is your bread and butter in this case (see :ref:`topics-shell-inspect-response`):: In order to see the item scraped from a specific url:: Logging Logging is another useful option for getting information about your spider run. Although not as convenient, it comes with the advantage that the logs will be available in all future runs should they be necessary again:: Open in browser Parse Command Scrapy Shell See also: :ref:`topics-shell-inspect-response`. Sometimes you just want to see how a certain response looks in a browser, you can use the ``open_in_browser`` function for that. Here is an example of how you would use it:: The most basic way of checking the output of your spider is to use the :command:`parse` command. It allows to check the behaviour of different parts of the spider at the method level. It has the advantage of being flexible and simple to use, but does not allow debugging code inside a method. This document explains the most common techniques for debugging spiders. Consider the following scrapy spider below:: Using the ``--verbose`` or ``-v`` option we can see the status at each depth level:: While the :command:`parse` command is very useful for checking behaviour of a spider, it is of little help to check what happens inside a callback, besides showing the response received and the output. How to debug the situation when ``parse_details`` sometimes receives no item? ``open_in_browser`` will open a browser with the response received by Scrapy at that point, adjusting the `base tag`_ so that images and styles are displayed properly. Project-Id-Version: Scrapy 1.4
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
 Basically this is a simple spider which parses two pages of items (the start_urls). Items also have a details page with additional information, so we use the ``meta`` functionality of :class:`~scrapy.http.Request` to pass a partially populated item. Checking items scraped from a single start_url, can also be easily achieved using:: Debugging Spiders For more information, check the :ref:`topics-logging` section. Fortunately, the :command:`shell` is your bread and butter in this case (see :ref:`topics-shell-inspect-response`):: In order to see the item scraped from a specific url:: Logging Logging is another useful option for getting information about your spider run. Although not as convenient, it comes with the advantage that the logs will be available in all future runs should they be necessary again:: Open in browser Parse Command Scrapy Shell See also: :ref:`topics-shell-inspect-response`. Sometimes you just want to see how a certain response looks in a browser, you can use the ``open_in_browser`` function for that. Here is an example of how you would use it:: The most basic way of checking the output of your spider is to use the :command:`parse` command. It allows to check the behaviour of different parts of the spider at the method level. It has the advantage of being flexible and simple to use, but does not allow debugging code inside a method. This document explains the most common techniques for debugging spiders. Consider the following scrapy spider below:: Using the ``--verbose`` or ``-v`` option we can see the status at each depth level:: While the :command:`parse` command is very useful for checking behaviour of a spider, it is of little help to check what happens inside a callback, besides showing the response received and the output. How to debug the situation when ``parse_details`` sometimes receives no item? ``open_in_browser`` will open a browser with the response received by Scrapy at that point, adjusting the `base tag`_ so that images and styles are displayed properly. 