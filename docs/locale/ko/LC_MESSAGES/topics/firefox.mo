��          �               l  ,   m  [   �     �  
   �  �   	  e   �  �   �  Q   �  �       �  \   �  #   8     \     w     �  9  �  �   �  �   �  L   W	  F   �	  t  �	  ,   `  [   �     �  
   �  �   �  e   �  �   �  Q   �  �  �     �  \   �  #   +     O     j     x  9  �  �   �  �   �  L   J  F   �   Caveats with inspecting the live browser DOM Disable Firefox Javascript while inspecting the DOM looking for XPaths to be used in Scrapy Firebug Firecookie Here is a list of tips and advice on using Firefox for scraping, along with a list of useful Firefox add-ons to ease the scraping process. Never include ``<tbody>`` elements in your XPath expressions unless you really know what you're doing Never use full XPath paths, use relative and clever ones based on attributes (such as ``id``, ``class``, ``width``, etc) or any identifying features like ``contains(@href, 'image')``. See :ref:`topics-firebug` for a detailed guide on how to use Firebug with Scrapy. Since Firefox add-ons operate on a live browser DOM, what you'll actually see when inspecting the page source is not the original HTML, but a modified one after applying some browser clean up and executing Javascript code.  Firefox, in particular, is known for adding ``<tbody>`` elements to tables.  Scrapy, on the other hand, does not modify the original page HTML, so you won't be able to extract any data if you use ``<tbody>`` in your XPath expressions. Tamper Data Therefore, you should keep in mind the following things when working with Firefox and XPath: Useful Firefox add-ons for scraping Using Firefox for scraping XPath Checker XPather `Firebug`_ is a widely known tool among web developers and it's also very useful for scraping. In particular, its `Inspect Element`_ feature comes very handy when you need to construct the XPaths for extracting data because it allows you to view the HTML code of each page element while moving your mouse over it. `Firecookie`_ makes it easier to view and manage cookies. You can use this extension to create a new cookie, delete existing cookies, see a list of cookies for the current site, manage cookies permissions and a lot more. `Tamper Data`_ is a Firefox add-on which allows you to view and modify the HTTP request headers sent by Firefox. Firebug also allows to view HTTP headers, but not to modify them. `XPath Checker`_ is another Firefox add-on for testing XPaths on your pages. `XPather`_ allows you to test XPath expressions directly on the pages. Project-Id-Version: Scrapy 1.4
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
 Caveats with inspecting the live browser DOM Disable Firefox Javascript while inspecting the DOM looking for XPaths to be used in Scrapy Firebug Firecookie Here is a list of tips and advice on using Firefox for scraping, along with a list of useful Firefox add-ons to ease the scraping process. Never include ``<tbody>`` elements in your XPath expressions unless you really know what you're doing Never use full XPath paths, use relative and clever ones based on attributes (such as ``id``, ``class``, ``width``, etc) or any identifying features like ``contains(@href, 'image')``. See :ref:`topics-firebug` for a detailed guide on how to use Firebug with Scrapy. Since Firefox add-ons operate on a live browser DOM, what you'll actually see when inspecting the page source is not the original HTML, but a modified one after applying some browser clean up and executing Javascript code.  Firefox, in particular, is known for adding ``<tbody>`` elements to tables.  Scrapy, on the other hand, does not modify the original page HTML, so you won't be able to extract any data if you use ``<tbody>`` in your XPath expressions. Tamper Data Therefore, you should keep in mind the following things when working with Firefox and XPath: Useful Firefox add-ons for scraping Using Firefox for scraping XPath Checker XPather `Firebug`_ is a widely known tool among web developers and it's also very useful for scraping. In particular, its `Inspect Element`_ feature comes very handy when you need to construct the XPaths for extracting data because it allows you to view the HTML code of each page element while moving your mouse over it. `Firecookie`_ makes it easier to view and manage cookies. You can use this extension to create a new cookie, delete existing cookies, see a list of cookies for the current site, manage cookies permissions and a lot more. `Tamper Data`_ is a Firefox add-on which allows you to view and modify the HTTP request headers sent by Firefox. Firebug also allows to view HTTP headers, but not to modify them. `XPath Checker`_ is another Firefox add-on for testing XPaths on your pages. `XPather`_ allows you to test XPath expressions directly on the pages. 