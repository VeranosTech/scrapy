��                          �     �   �    F  p   J  �   �  �   �  @        Z  7   n  #  �     �  U  �  r   8	  N   �	  �   �	     �
  �   �
  C   v  �   �  x     �   �  L   �  �   �    �  *   �  %        8  Q  S  D   �  R   �  t  =  �   �  �   \    �  p   �  �   `  �   -  @   �     �  7     #  K     o  U  �  r   �  N   P  �   �     �  �   �  C     �   _  x   $  �   �  L   3  �   �    p   *   �!  %   �!     �!  Q  �!  D   J#  R   �#   After using FireBug, we can see that each link is inside a ``td`` tag, which is itself inside a ``tr`` tag that also contains the link's ranking bar (in another ``td``). As expected, the subcategories contain links to other subcategories, and also links to actual websites, which is the purpose of the directory. As you can see, the page markup is not very descriptive: the elements don't contain ``id``, ``class`` or any attribute that clearly identifies them, so we'll use the ranking bars as a reference point to select the data to extract when we construct our XPaths. At first sight, we can see that the directory is divided in categories, which are also divided in subcategories. Basically, that expression will look for the ranking bar's ``td`` element, and then select any ``td`` element who has a descendant ``a`` element whose ``href`` attribute contains the string ``#pagerank``" Be aware that you may find some elements which appear in Firebug but not in the original HTML, such as the typical case of ``<tbody>`` elements. By looking at the category URLs we can see they share a pattern: Extracting the data Finally, we can write our ``parse_category()`` method:: Firebug comes with a very useful feature called `Inspect Element`_ which allows you to inspect the HTML code of the different page elements just by hovering your mouse over them. Otherwise you would have to search for the tags manually through the HTML body which can be a very tedious task. Getting links to follow Google Directory, the example website used in this guide is no longer available as it `has been shut down by Google`_. The concepts in this guide are still valid though. If you want to update this guide to use a new (working) site, your contribution will be more than welcome!. See :ref:`topics-contributing` for information on how to do so. However, it seems that there are more subcategories than the ones being shown in this page, so we'll keep looking: In the following screenshot you can see the `Inspect Element`_ tool in action. In this example, we'll show how to use `Firebug`_ to scrape data from the `Google Directory`_, which contains the same data as the `Open Directory Project`_ used in the :ref:`tutorial <intro-tutorial>` but with a different face. Introduction It's important to use the :ref:`Scrapy shell <topics-shell>` to test these complex XPath expressions and make sure they work as expected. Now we're going to write the code to extract data from those pages. Of course, this is not the only XPath, and maybe not the simpler one to select that data. Another approach could be, for example, to find any ``font`` tags that have that grey colour of the links, Once we know that, we are able to construct a regular expression to follow those links. For example, the following one:: So we can select the ranking bar, then find its parent (the ``tr``), and then finally, the link's ``td`` (which contains the data we want to scrape). So, based on that regular expression we can create the first crawling rule:: The :class:`~scrapy.spiders.Rule` object instructs :class:`~scrapy.spiders.CrawlSpider` based spiders how to follow the category links. ``parse_category`` will be a method of the spider which will process and extract data from those pages. This document explains how to use `Firebug`_ (a Firefox add-on) to make the scraping process easier and more fun. For other useful Firefox add-ons see :ref:`topics-firefox-addons`. There are some caveats with using Firefox add-ons to inspect pages, see :ref:`topics-firefox-livedom`. This is how the spider would look so far:: This results in the following XPath:: Using Firebug for scraping With the help of Firebug, we'll take a look at some page containing links to websites (say http://directory.google.com/Top/Arts/Awards/) and find out how we can extract those links using :ref:`Selectors <topics-selectors>`. We'll also use the :ref:`Scrapy shell <topics-shell>` to test those XPath's and make sure they work as we expect. http://directory.google.com/Category/Subcategory/Another_Subcategory or tags which Therefer   in page HTML sources may on Firebug inspects the live DOM Project-Id-Version: Scrapy 1.4
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
 After using FireBug, we can see that each link is inside a ``td`` tag, which is itself inside a ``tr`` tag that also contains the link's ranking bar (in another ``td``). As expected, the subcategories contain links to other subcategories, and also links to actual websites, which is the purpose of the directory. As you can see, the page markup is not very descriptive: the elements don't contain ``id``, ``class`` or any attribute that clearly identifies them, so we'll use the ranking bars as a reference point to select the data to extract when we construct our XPaths. At first sight, we can see that the directory is divided in categories, which are also divided in subcategories. Basically, that expression will look for the ranking bar's ``td`` element, and then select any ``td`` element who has a descendant ``a`` element whose ``href`` attribute contains the string ``#pagerank``" Be aware that you may find some elements which appear in Firebug but not in the original HTML, such as the typical case of ``<tbody>`` elements. By looking at the category URLs we can see they share a pattern: Extracting the data Finally, we can write our ``parse_category()`` method:: Firebug comes with a very useful feature called `Inspect Element`_ which allows you to inspect the HTML code of the different page elements just by hovering your mouse over them. Otherwise you would have to search for the tags manually through the HTML body which can be a very tedious task. Getting links to follow Google Directory, the example website used in this guide is no longer available as it `has been shut down by Google`_. The concepts in this guide are still valid though. If you want to update this guide to use a new (working) site, your contribution will be more than welcome!. See :ref:`topics-contributing` for information on how to do so. However, it seems that there are more subcategories than the ones being shown in this page, so we'll keep looking: In the following screenshot you can see the `Inspect Element`_ tool in action. In this example, we'll show how to use `Firebug`_ to scrape data from the `Google Directory`_, which contains the same data as the `Open Directory Project`_ used in the :ref:`tutorial <intro-tutorial>` but with a different face. Introduction It's important to use the :ref:`Scrapy shell <topics-shell>` to test these complex XPath expressions and make sure they work as expected. Now we're going to write the code to extract data from those pages. Of course, this is not the only XPath, and maybe not the simpler one to select that data. Another approach could be, for example, to find any ``font`` tags that have that grey colour of the links, Once we know that, we are able to construct a regular expression to follow those links. For example, the following one:: So we can select the ranking bar, then find its parent (the ``tr``), and then finally, the link's ``td`` (which contains the data we want to scrape). So, based on that regular expression we can create the first crawling rule:: The :class:`~scrapy.spiders.Rule` object instructs :class:`~scrapy.spiders.CrawlSpider` based spiders how to follow the category links. ``parse_category`` will be a method of the spider which will process and extract data from those pages. This document explains how to use `Firebug`_ (a Firefox add-on) to make the scraping process easier and more fun. For other useful Firefox add-ons see :ref:`topics-firefox-addons`. There are some caveats with using Firefox add-ons to inspect pages, see :ref:`topics-firefox-livedom`. This is how the spider would look so far:: This results in the following XPath:: Using Firebug for scraping With the help of Firebug, we'll take a look at some page containing links to websites (say http://directory.google.com/Top/Arts/Awards/) and find out how we can extract those links using :ref:`Selectors <topics-selectors>`. We'll also use the :ref:`Scrapy shell <topics-shell>` to test those XPath's and make sure they work as we expect. http://directory.google.com/Category/Subcategory/Another_Subcategory or tags which Therefer   in page HTML sources may on Firebug inspects the live DOM 