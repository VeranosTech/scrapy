Þ    "      ,              <  ©   =  ß   ç     Ç     æ     ö          !     =     M     ]     k     y  Ä     Â   S          "     /  j   5  x           A   ,     n       @    [  I	  À   ¥
  B   f  ÿ   ©  +  ©     Õ     è     t  ç  ø  t  à  ¾   U  æ        û       %   -     S  "   d               ¯     ½     Ã  ÷   Õ  à   Í     ®     ¿  	   Ð     Ú  ©   c       U   "     x  ¤       /  û  ·  í   ³  ]   ¡  b  ÿ  Û  b      >"  ¦   ["     #    #   :class:`Field` objects are used to specify metadata for each field. For example, the serializer function for the ``last_updated`` field illustrated in the example above. A dictionary containing *all declared fields* for this Item, not only those populated. The keys are the field names and the values are the :class:`Field` objects used in the :ref:`Item declaration <topics-items-declaring>`. Accessing all populated values Copying items:: Creating dicts from items:: Creating items Creating items from dicts:: Declaring Items Extending Items Field objects For example:: Getting field values Here are some examples of common tasks performed with items, using the ``Product`` item :ref:`declared above  <topics-items-declaring>`. You will notice the API is very similar to the `dict API`_. It's important to note that the :class:`Field` objects used to declare the item do not stay assigned as class attributes. Instead, they can be accessed through the :attr:`Item.fields` attribute. Item Fields Item objects Items Items are declared using a simple class definition syntax and :class:`Field` objects. Here is an example:: Items replicate the standard `dict API`_, including its constructor. The only additional attribute provided by Items is: Other common tasks Return a new Item optionally initialized from the given argument. Setting field values That adds (or replaces) the ``serializer`` metadata key for the ``name`` field, keeping all the previously existing metadata values. The :class:`Field` class is just an alias to the built-in `dict`_ class and doesn't provide any extra functionality or attributes. In other words, :class:`Field` objects are plain-old Python dicts. A separate class is used to support the :ref:`item declaration syntax <topics-items-declaring>` based on class attributes. The main goal in scraping is to extract structured data from unstructured sources, typically, web pages. Scrapy spiders can return the extracted data as Python dicts. While convenient and familiar, Python dicts lack structure: it is easy to make a typo in a field name or return inconsistent data, especially in a larger project with many spiders. Those familiar with `Django`_ will notice that Scrapy Items are declared similar to `Django Models`_, except that Scrapy Items are much simpler as there is no concept of different field types. To access all populated values, just use the typical `dict API`_:: To define common output data format Scrapy provides the :class:`Item` class. :class:`Item` objects are simple containers used to collect the scraped data. They provide a `dictionary-like`_ API with a convenient syntax for declaring their available fields. Various Scrapy components use extra information provided by Items: exporters look at declared fields to figure out columns to export, serialization can be customized using Item fields metadata, :mod:`trackref` tracks Item instances to help find memory leaks (see :ref:`topics-leaks-trackrefs`), etc. Working with Items You can also extend field metadata by using the previous field metadata and appending more values, or changing existing values, like this:: You can extend Items (to add more fields or to change some metadata for some fields) by declaring a subclass of your original Item. You can specify any kind of metadata for each field. There is no restriction on the values accepted by :class:`Field` objects. For this same reason, there is no reference list of all available metadata keys. Each key defined in :class:`Field` objects could be used by a different component, and only those components know about it. You can also define and use any other :class:`Field` key in your project too, for your own needs. The main goal of :class:`Field` objects is to provide a way to define all field metadata in one place. Typically, those components whose behaviour depends on each field use certain field keys to configure that behaviour. You must refer to their documentation to see which metadata keys are used by each component. Project-Id-Version: Scrapy 1.4
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
 :class:`Field` ê°ì²´ë ê° íëì ë©íë°ì´í°ë¥¼ ì§ì íê¸° ìí´ ì¬ì©ëë¤. ìì ìììì ë¬ì¬ë ``last_updated`` íëë¥¼ ìí ì§ë ¬í í¨ìê° ê·¸ ìì´ë¤. ì´ ìì´íì ìë ¥ë ê²ë¿ë§ ìëë¼ *ì ì¸ë ëª¨ë  íë*\ ë¥¼ í¬í¨íë ì¬ì . í¤ë íë ì´ë¦ì´ê³  ê°ì :ref:`ìì´í ì ì¸ <topics-items-declaring>` ë´ìì ì¬ì©ëë :class:`Field` ê°ì²´ë¤. Accessing all populated values ìì´í ë³µì¬:: ìì´íì¼ë¡ ëìëë¦¬ ìì±:: ìì´í ìì± ëìëë¦¬ë¡ ìì´í ìì±:: ìì´í ì ì¸ ìì´í íì¥íê¸° íë ê°ì²´ ì:: íë ê° ì»ê¸° ì´ ì¹ììë :ref:`ììì ì ì¸ë <topics-items-declaring>` ``Product`` ìì´íì ì¬ì©í´ì ìííë ì¼ë°ì ì¸ ììì ììê° ìë¤. APIê° `ëìëë¦¬ API`_\ ì ë§¤ì° ì ì¬íë¤ë ì¬ì¤ì ìê² ë  ê²ì´ë¤. ìì´íì ì ì¸íê¸° ìí´ ì¬ì©ë :class:`Field` ê°ì²´ë í´ëì¤ ìì±ì¼ë¡ í ë¹ë ì± ë¨ììì§ ìëë¤ë ì¬ì¤ì ëªì¬íë¼. ëì , :attr:`Item.fields` ìì±ì íµí´ì ì ê·¼í  ì ìë¤. ìì´í íë ìì´í ê°ì²´ ìì´í ìì´íì ê°ë¨í í´ëì¤ ì ì ì íì¤ì :class:`Field` ê°ì²´ë¥¼ ì¬ì©í´ ì ì¸ëë¤. ë¤ìì ì ì¸ì ììì´ë¤:: ìì´íì ìì±ì(constructor)ë¥¼ í¬í¨í´, ê¸°ë³¸ `ëìëë¦¬ API`_\ ë¥¼ ë³µì íë¤. ìì´íì¼ë¡ ì ê³µëë ì ì¼í ì¶ê° ìì±ì ìëì ê°ë¤: ë¤ë¥¸ ì¼ë° ìì ì£¼ì´ì§ ì¸ìë¡ ì íì ì¼ë¡ ì´ê¸°íë ìë¡ì´ ìì´íì ë°ííë¤. íë ê° ì¤ì  ì ì½ëë ``name`` íëë¥¼ ìí ``serializeer`` ë©íë°ì´í° í¤ë¥¼ ì¶ê° (ëë êµì²´) ìí¤ë©´ì ê¸°ì¡´ì ë©íë°ì´í° ê°ì ì ì§ìì¼°ë¤. :class:`Field` í´ëì¤ë ë¨ìí ë´ì¥ `ëìëë¦¬`_ í´ëì¤ì ëí ìë¦¬ìì¤(alilas)ì´ë©° ì¶ê°ì ì¸ ê¸°ë¥ì´ë ìì±ì ì ê³µíì§ ìëë¤. ì¦, :class:`Field` ê°ì²´ë íë²í íì´ì¬ ëìëë¦¬ë¤. ë³ëì í´ëì¤ë í´ëì¤ ìì±ì ê¸°ë°ì¼ë¡ íë :ref:`ìì´í ì ì¸ ì íì¤ <topics-items-declaring>`\ ë¥¼ ì§ìíë ë° ì¬ì©ëë¤ ì¤í¬ë©íì ì£¼ ëª©ì ì êµ¬ì¡°íëì§ ìì ìë£, ì£¼ë¡ ì¹íì´ì§ìì êµ¬ì¡°íë ìë£ë¥¼ ì¶ì¶íë ê²ì´ë¤. ì¤í¬ëí¼(Scrapy) ì¤íì´ë(spider)ë ì¶ì¶ë ë°ì´í°ë¥¼ íì´ì¬(Python) ëìëë¦¬ë¡ ë°íí  ì ìë¤. ì´ë í¸ë¦¬íê³  ì¹ìíì§ë§, íì´ì¬ ëìëë¦¬ë êµ¬ì¡°ê° ë¶ì¡±íë¤: í¹í ë§ì ì¤íì´ëë¥¼ ì¬ì©íë ê±°ëí íë¡ì í¸ììë íë ì´ë¦ì ì¤íë¥¼ ë´ê±°ë ì¼ê´ì± ìë ë°ì´í°ë¥¼ ë°ííê¸° ì½ë¤. `ì¥ê³ (Django)`_\ ì ìµìí ì¬ëì ì¤í¬ëí¼ ìì´íì´ ë¤ë¥¸ íë íìì´ ìê¸° ëë¬¸ì í¨ì¬ ë¨ìíë¤ë ì¬ì¤ì ì ì¸íë©´ `ì¥ê³  ëª¨ë¸`_\ ê³¼ ì ì¬íê² ì ì¸ëë ê²ì ììì°¨ë ¸ì ê²ì´ë¤. ìë ¥ë ëª¨ë  ê°ì ì ê·¼íë ¤ë©´, ì¼ë°ì ì¸ `ëìëë¦¬ API`_\ ë¥¼ ì¬ì©íë¼:: ê³µíµì ì¸ ì¶ë ¥ ë°ì´í° í¬ë§·ì ì ìíê¸° ìí´ì ì¤í¬ëí¼ë :class:`Item` í´ëì¤ë¥¼ ì ê³µíë¤. :class:`Item` ê°ì²´ë ì¤í¬ë©ë ë°ì´í°ë¥¼ ëª¨ì¼ê¸° ìí ê°ë¨í ì»¨íì´ëë¤. ì´ ê°ì²´ë `ëìëë¦¬ í`_ APIì ì¬ì©í  ì ìë íëë¥¼ í¸ë¦¬íê² ì ì¸í  ì ìë ì íì¤(syntax)ë¥¼ ì ê³µíë¤. ë¤ìí ì¤í¬ëí¼ êµ¬ì±ììë ìì´íì´ ì ê³µíë ì¶ê°ì ì¸ ì ë³´ë¥¼ ì¬ì©íë¤: ìµì¤í¬í°(exporter)sms ë´ë³´ë¼ ì»¬ë¼(column)ì ììë´ê¸° ìí´ ì ì¸ë íëë¥¼ íì¸íë©°, ì§ë ¬í(serialization)ë ìì´í íëì ë©íë°ì´í°ë¥¼ ì¬ì©í´ ì»¤ì¤í°ë§ì´ì¦í  ì ìê³ , :mod:`trackref`\ ë ë©ëª¨ë¦¬ ëìë¥¼ ê°ì§ë¥¼ ëê¸° ìí´ ìì´í ì¸ì¤í´ì¤ë¥¼ ì¶ì²íë¤ (:ref:`topics-leaks-trackrefs`\ ë¥¼ ì°¸ê³ íë¼). ìì´íì¼ë¡ ììíê¸° ëí ì´ì  íëì ë©íë°ì´í°ë¥¼ ì¬ì©í´ì ê°ì ë ì¶ê°íê±°ë ê¸°ì¡´ì ê°ì ë³ê²½ìì¼ì íë ë©íë°ì´í°ë¥¼ íì¥í  ì ìë¤:::: ìë³¸ ìì´íì ììí´ëì¤ë¥¼ ì ì¸í´ì ìì´íì íì¥(íëë¥¼ ì¶ê°íê±°ë íëì ë©íë°ì´í°ë¥¼ ë³ê²½)í  ì ìë¤. ì¬ì©ìë ê° íëì ëí ëª¨ë  ì¢ë¥ì ë©íë°ì´í°ë¥¼ ì§ì í  ì ìë¤.\ :class:`Field` ê°ì²´ê° ë°ìë¤ì´ë ê°ì ëí´ ì íì ìë¤. ê°ì ì´ì  ëë¬¸ì, ì¬ì© ê°ë¥í ë©íë°ì´í° í¤ì ì°¸ì¡° ë¦¬ì¤í¸ë ìë¤. :class:`Field` ê°ì²´ìì ì ìë ê° í¤ë ë¤ë¥¸ êµ¬ì±ìììì ì¬ì©ë  ì ìê³ , êµ¬ì±ììë§ì´ ê·¸ê²ì ëí´ ìê³  ìë¤. ëí íìì ë§ê² íë¡ì í¸ì ë¤ë¥¸ :class:`Field`\ ë¥¼ ì ìíê³  ì¬ì©í  ì ìë¤. :class:`Field`\ ê°ì²´ì ì£¼ ëª©íë í ì¥ìì ëª¨ë  íë ë©íë°ì´í°ë¥¼ ì ìíë ë°©ë²ì ì ê³µíë ê²ì´ë¤. ì¼ë°ì ì¼ë¡ ëìì´ ê° íëì ìì¡´íë êµ¬ì±ììë ê·¸ ëìì êµ¬ì±íë í¹ì  íë í¤ë¥¼ ì¬ì©íë¤. ì´ë¤ ë©íë°ì´í° í¤ê° ê° êµ¬ì±ììì ì¬ì©ëëì§ë¥¼ ë³´ë ¤ë©´ í´ë¹ ë¬¸ìë¥¼ ë°ëì ì°¸ê³ í´ì¼ íë¤. 