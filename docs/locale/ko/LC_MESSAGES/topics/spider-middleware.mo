��    �      l              �  f   �  '   $	  ?   L	  :   �	  G   �	  6   
  E   F
  :   �
  <   �
  K     9   P  �   �  J   '  �   r  y   �  T   p  8   �  N   �  �   M  %   �  n        {  $   �     �  w   �  E   P     �     �     �     �  �   �  ^   �  �   7  H     :   Q  �   �  v     N   �  :   �          7     K  Y   _     �     �  D  �    /  �   D  �   �  J  }  �   �  �   z  �     $    y   +  �   �  z   .  �   �     �   
   �   D   �   2   �   Z   '!     �!     �!     �!     �!  �   �!  �   z"  �   $#  �   �#     �$     �$  �   �$  �   �%  l  �&  �   "(    �(  2  �)  �   +  }   �+  �   \,  �  �,  !  u/  �   �0    f1  M   |2  t   �2  ~   ?3  e   �3  �   $4  B  �4  �   B6  �   '7  \  �7  R  I9     �:  �  �:  �   �<  %   @=  "   f=  �   �=     Z>     k>     �>     �>     �>  m   �>     4?  $   G?     l?  E   |?     �?  !   �?  �   @  V   �@  B   �@  B   2A  Q   uA  =   �A  O   B  B   UB  D   �B  V   �B  A   4C  1   vC  $   �C     �C     �C  :   �C  8   :D  !   sD  .   �D  ,   �D  %   �D  *   E     BE  t  UE  f   �F  '   1G  ?   YG  :   �G  G   �G  6   H  E   SH  :   �H  <   �H  K   I  9   ]I  �   �I  J   4J  �   J  y   K  T   }K  8   �K  N   L  �   ZL  %   �L  n   M     �M  $   �M     �M  w   �M  E   ]N     �N     �N     �N     �N  �   �N  ^   �O  �   DP  H   Q  :   ^Q  �   �Q  v   +R  N   �R  :   �R     ,S     DS     XS  Y   lS     �S     �S  D  �S    <U  �   QV  �   �V  J  �W  �   �X  �   �Y  �   ,Z  $  [  y   8\  �   �\  z   ;]  �   �]     �^  
   �^  D   �^  2   _  Z   4_     �_     �_     �_     �_  �   �_  �   �`  �   1a  �   �a     �b     �b  �   �b  �   �c  l  �d  �   /f    �f  2  �g  �   *i  }   �i  �   ij  �  �j  !  �m  �   �n    so  M   �p  t   �p  ~   Lq  e   �q  �   1r  B  s  �   Ot  �   4u  \  �u  R  Vw     �x  �  �x  �   �z  %   M{  "   s{  �   �{     g|     x|     �|     �|     �|  m   �|     A}  $   T}     y}  E   �}     �}  !   �}  �   ~  V   �~  B   �~  B   ?  Q   �  =   �  O   �  B   b�  D   ��  V   �  A   A�  1   ��  $   ��     ځ     �  :   �  8   G�  !   ��  .   ��  ,   т  %   ��  *   $�     O�   "no-referrer-when-downgrade" policy is the W3C-recommended default, and is used by major web browsers. "unsafe-url" policy is NOT recommended. :class:`scrapy.spidermiddlewares.referer.DefaultReferrerPolicy` :class:`scrapy.spidermiddlewares.referer.NoReferrerPolicy` :class:`scrapy.spidermiddlewares.referer.NoReferrerWhenDowngradePolicy` :class:`scrapy.spidermiddlewares.referer.OriginPolicy` :class:`scrapy.spidermiddlewares.referer.OriginWhenCrossOriginPolicy` :class:`scrapy.spidermiddlewares.referer.SameOriginPolicy` :class:`scrapy.spidermiddlewares.referer.StrictOriginPolicy` :class:`scrapy.spidermiddlewares.referer.StrictOriginWhenCrossOriginPolicy` :class:`scrapy.spidermiddlewares.referer.UnsafeUrlPolicy` :meth:`process_spider_exception` should return either ``None`` or an iterable of :class:`~scrapy.http.Response`, dict or :class:`~scrapy.item.Item` objects. :meth:`process_spider_input` should return ``None`` or raise an exception. :meth:`process_spider_output` must return an iterable of :class:`~scrapy.http.Request`, dict or :class:`~scrapy.item.Item` objects. :setting:`DEPTH_LIMIT` - The maximum depth that will be allowed to crawl for any site. If zero, no limit will be imposed. :setting:`DEPTH_PRIORITY` - Whether to prioritize the requests based on their depth. :setting:`DEPTH_STATS` - Whether to collect depth stats. :setting:`URLLENGTH_LIMIT` - The maximum URL length to allow for crawled URLs. A variant of "no-referrer-when-downgrade", with the addition that "Referer" is not sent if the parent request was using ``file://`` or ``s3://`` scheme. Acceptable values for REFERRER_POLICY According to the `HTTP standard`_, successful responses are those whose status codes are in the 200-300 range. Activating a spider middleware Built-in spider middleware reference Class name (as a string) Cross-origin requests, on the other hand, will contain no referrer information. A Referer HTTP header will not be sent. Default: ``'scrapy.spidermiddlewares.referer.DefaultReferrerPolicy'`` Default: ``False`` Default: ``True`` Default: ``[]`` DepthMiddleware DepthMiddleware is used for tracking the depth of each Request inside the site being scraped. It works by setting `request.meta['depth'] = 0` whenever there is no value previously set (usually just the first Request) and incrementing it by 1 otherwise. Each middleware component is a Python class that defines one or more of the following methods: Filter out unsuccessful (erroneous) HTTP responses so that spiders don't have to deal with them, which (most of the time) imposes an overhead, consumes more resources, and makes the spider logic more complex. Filters out Requests for URLs outside the domains covered by the spider. Filters out requests with URLs longer than URLLENGTH_LIMIT Finally, keep in mind that some middlewares may need to be enabled through a particular setting. See each middleware documentation for more info. For a list of the components enabled by default (and their orders) see the :setting:`SPIDER_MIDDLEWARES_BASE` setting. For example, if you want your spider to handle 404 responses you can do this:: For more information see: `HTTP Status Code Definitions`_. HTTPERROR_ALLOWED_CODES HTTPERROR_ALLOW_ALL Here's an example:: However, it is NOT Scrapy's default referrer policy (see :class:`DefaultReferrerPolicy`). HttpErrorMiddleware HttpErrorMiddleware settings If it raises an exception, Scrapy won't bother calling any other spider middleware :meth:`process_spider_input` and will call the request errback.  The output of the errback is chained back in the other direction for :meth:`process_spider_output` to process it, or :meth:`process_spider_exception` if it raised an exception. If it returns ``None``, Scrapy will continue processing this exception, executing any other :meth:`process_spider_exception` in the following middleware components, until no middleware components are left and the exception reaches the engine (where it's logged and discarded). If it returns ``None``, Scrapy will continue processing this response, executing all other middlewares until, finally, the response is handed to the spider for processing. If it returns an iterable the :meth:`process_spider_output` pipeline kicks in, and no other :meth:`process_spider_exception` will be called. If present, this classmethod is called to create a middleware instance from a :class:`~scrapy.crawler.Crawler`. It must return a new instance of the middleware. Crawler object provides access to all Scrapy core components like settings and signals; it is a way for middleware to access them and hook its functionality into Scrapy. If the request has the :attr:`~scrapy.http.Request.dont_filter` attribute set, the offsite middleware will allow the request even if its domain is not listed in allowed domains. If the spider doesn't define an :attr:`~scrapy.spiders.Spider.allowed_domains` attribute, or the attribute is empty, the offsite middleware will allow all requests. If you still want to process response codes outside that range, you can specify which response codes the spider is able to handle using the ``handle_httpstatus_list`` spider attribute or :setting:`HTTPERROR_ALLOWED_CODES` setting. If you want to disable a builtin middleware (the ones defined in :setting:`SPIDER_MIDDLEWARES_BASE`, and enabled by default) you must define it in your project :setting:`SPIDER_MIDDLEWARES` setting and assign `None` as its value.  For example, if you want to disable the off-site middleware:: It can be used to limit the maximum depth to scrape, control Request priority based on their depth, and things like that. It receives an iterable (in the ``start_requests`` parameter) and must return another iterable of :class:`~scrapy.http.Request` objects. Keep in mind, however, that it's usually a bad idea to handle non-200 responses, unless you really know what you're doing. Note: The policy's name doesn't lie; it is unsafe. This policy will leak origins and paths from TLS-protected resources to insecure origins. Carefully consider the impact of setting such a policy for potentially sensitive documents. OffsiteMiddleware Parameters Pass all responses with non-200 status codes contained in this list. Pass all responses, regardless of its status code. Populates Request ``Referer`` header, based on the URL of the Response which generated it. REFERER_ENABLED REFERRER_POLICY RefererMiddleware RefererMiddleware settings Requests from TLS-protected clients to non- potentially trustworthy URLs, on the other hand, will contain no referrer information. A Referer HTTP header will not be sent. Requests from TLS-protected clients to non-potentially trustworthy URLs, on the other hand, will contain no referrer information. A Referer HTTP header will not be sent. Requests from TLS-protected request clients to non- potentially trustworthy URLs, on the other hand, will contain no referrer information. A Referer HTTP header will not be sent. Scrapy's default referrer policy — just like `"no-referrer-when-downgrade"`_, the W3C-recommended value for browsers — will send a non-empty "Referer" header from any ``http(s)://`` to any ``https://`` URL, even if the domain is different. Spider Middleware String value The "no-referrer-when-downgrade" policy sends a full URL along with requests from a TLS-protected environment settings object to a potentially trustworthy URL, and requests from clients which are not TLS-protected to any origin. The "origin" policy specifies that only the ASCII serialization of the origin of the request client is sent as referrer information when making both same-origin requests and cross-origin requests from a particular request client. The "origin-when-cross-origin" policy specifies that a full URL, stripped for use as a referrer, is sent as referrer information when making same-origin requests from a particular request client, and only the ASCII serialization of the origin of the request client is sent as referrer information when making cross-origin requests from a particular request client. The "same-origin" policy specifies that a full URL, stripped for use as a referrer, is sent as referrer information when making same-origin requests from a particular request client. The "strict-origin" policy sends the ASCII serialization of the origin of the request client when making requests: - from a TLS-protected environment settings object to a potentially trustworthy URL, and - from non-TLS-protected environment settings objects to any origin. The "strict-origin-when-cross-origin" policy specifies that a full URL, stripped for use as a referrer, is sent as referrer information when making same-origin requests from a particular request client, and only the ASCII serialization of the origin of the request client when making cross-origin requests: The "unsafe-url" policy specifies that a full URL, stripped for use as a referrer, is sent along with both cross-origin requests and same-origin requests made from a particular request client. The :class:`DepthMiddleware` can be configured through the following settings (see the settings documentation for more info): The :class:`UrlLengthMiddleware` can be configured through the following settings (see the settings documentation for more info): The :setting:`SPIDER_MIDDLEWARES` setting is merged with the :setting:`SPIDER_MIDDLEWARES_BASE` setting defined in Scrapy (and not meant to be overridden) and then sorted by order to get the final sorted list of enabled middlewares: the first middleware is the one closer to the engine and the last is the one closer to the spider. In other words, the :meth:`~scrapy.spidermiddlewares.SpiderMiddleware.process_spider_input` method of each middleware will be invoked in increasing middleware order (100, 200, 300, ...), and the :meth:`~scrapy.spidermiddlewares.SpiderMiddleware.process_spider_output` method of each middleware will be invoked in decreasing order. The ``handle_httpstatus_list`` key of :attr:`Request.meta <scrapy.http.Request.meta>` can also be used to specify which response codes to allow on a per-request basis. You can also set the meta key ``handle_httpstatus_all`` to ``True`` if you want to allow any response code for a request. The simplest policy is "no-referrer", which specifies that no referrer information is to be sent along with requests made from a particular request client to any origin. The header will be omitted entirely. The spider middleware is a framework of hooks into Scrapy's spider processing mechanism where you can plug custom functionality to process the responses that are sent to :ref:`topics-spiders` for processing and to process the requests and items that are generated from spiders. This is a user agent's default behavior, if no policy is otherwise specified. This method is called for each response that goes through the spider middleware and into the spider, for processing. This method is called when a spider or :meth:`process_spider_input` method (from other spider middleware) raises an exception. This method is called with the results returned from the Spider, after it has processed the response. This method is called with the start requests of the spider, and works similarly to the :meth:`process_spider_output` method, except that it doesn't have a response associated and must return only requests (not items). This middleware filters out every request whose host names aren't in the spider's :attr:`~scrapy.spiders.Spider.allowed_domains` attribute. All subdomains of any domain in the list are also allowed. E.g. the rule ``www.example.org`` will also allow ``bob.www.example.org`` but not ``www2.example.com`` nor ``example.com``. This page describes all spider middleware components that come with Scrapy. For information on how to use them and how to write your own spider middleware, see the :ref:`spider middleware usage guide <topics-spider-middleware>`. To activate a spider middleware component, add it to the :setting:`SPIDER_MIDDLEWARES` setting, which is a dict whose keys are the middleware class path and their values are the middleware orders. To avoid filling the log with too much noise, it will only print one of these messages for each new domain filtered. So, for example, if another request for ``www.othersite.com`` is filtered, no log message will be printed. But if a request for ``someothersite.com`` is filtered, a message will be printed (but only for the first request filtered). To decide which order to assign to your middleware see the :setting:`SPIDER_MIDDLEWARES_BASE` setting and pick a value according to where you want to insert the middleware. The order does matter because each middleware performs a different action and your middleware could depend on some previous (or subsequent) middleware being applied. UrlLengthMiddleware When implementing this method in your spider middleware, you should always return an iterable (that follows the input one) and not consume all ``start_requests`` iterator because it can be very large (or even unbounded) and cause a memory overflow. The Scrapy engine is designed to pull start requests while it has capacity to process them, so the start requests iterator can be effectively endless where there is some other condition for stopping the spider (like a time limit or item/page count). When your spider returns a request for a domain not belonging to those covered by the spider, this middleware will log a debug message similar to this one:: Whether to enable referer middleware. Writing your own spider middleware You can also set the Referrer Policy per request, using the special ``"referrer_policy"`` :ref:`Request.meta <topics-request-meta>` key, with the same acceptable values as for the ``REFERRER_POLICY`` setting. `"no-referrer"`_ `"no-referrer-when-downgrade"`_ `"origin"`_ `"origin-when-cross-origin"`_ `"same-origin"`_ `"same-origin"`_ may be a better choice if you want to remove referrer information for cross-domain requests. `"strict-origin"`_ `"strict-origin-when-cross-origin"`_ `"unsafe-url"`_ `Referrer Policy`_ to apply when populating Request "Referer" header. ``"scrapy-default"`` (default) crawler that uses this middleware either a path to a ``scrapy.spidermiddlewares.referer.ReferrerPolicy`` subclass — a custom policy or one of the built-in ones (see classes below), from a TLS-protected environment settings object to a potentially trustworthy URL, and from non-TLS-protected environment settings objects to any origin. https://www.w3.org/TR/referrer-policy/#referrer-policy-no-referrer https://www.w3.org/TR/referrer-policy/#referrer-policy-no-referrer-when-downgrade https://www.w3.org/TR/referrer-policy/#referrer-policy-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-origin-when-cross-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-same-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-strict-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-strict-origin-when-cross-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-unsafe-url or one of the standard W3C-defined string values, or the special ``"scrapy-default"``. the exception raised the response being processed the response being processed when the exception was raised the response which generated this output from the spider the result returned by the spider the spider for which this response is intended the spider to whom the start requests belong the spider which raised the exception the spider whose result is being processed the start requests Project-Id-Version: Scrapy 1.4
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
 "no-referrer-when-downgrade" policy is the W3C-recommended default, and is used by major web browsers. "unsafe-url" policy is NOT recommended. :class:`scrapy.spidermiddlewares.referer.DefaultReferrerPolicy` :class:`scrapy.spidermiddlewares.referer.NoReferrerPolicy` :class:`scrapy.spidermiddlewares.referer.NoReferrerWhenDowngradePolicy` :class:`scrapy.spidermiddlewares.referer.OriginPolicy` :class:`scrapy.spidermiddlewares.referer.OriginWhenCrossOriginPolicy` :class:`scrapy.spidermiddlewares.referer.SameOriginPolicy` :class:`scrapy.spidermiddlewares.referer.StrictOriginPolicy` :class:`scrapy.spidermiddlewares.referer.StrictOriginWhenCrossOriginPolicy` :class:`scrapy.spidermiddlewares.referer.UnsafeUrlPolicy` :meth:`process_spider_exception` should return either ``None`` or an iterable of :class:`~scrapy.http.Response`, dict or :class:`~scrapy.item.Item` objects. :meth:`process_spider_input` should return ``None`` or raise an exception. :meth:`process_spider_output` must return an iterable of :class:`~scrapy.http.Request`, dict or :class:`~scrapy.item.Item` objects. :setting:`DEPTH_LIMIT` - The maximum depth that will be allowed to crawl for any site. If zero, no limit will be imposed. :setting:`DEPTH_PRIORITY` - Whether to prioritize the requests based on their depth. :setting:`DEPTH_STATS` - Whether to collect depth stats. :setting:`URLLENGTH_LIMIT` - The maximum URL length to allow for crawled URLs. A variant of "no-referrer-when-downgrade", with the addition that "Referer" is not sent if the parent request was using ``file://`` or ``s3://`` scheme. Acceptable values for REFERRER_POLICY According to the `HTTP standard`_, successful responses are those whose status codes are in the 200-300 range. Activating a spider middleware Built-in spider middleware reference Class name (as a string) Cross-origin requests, on the other hand, will contain no referrer information. A Referer HTTP header will not be sent. Default: ``'scrapy.spidermiddlewares.referer.DefaultReferrerPolicy'`` Default: ``False`` Default: ``True`` Default: ``[]`` DepthMiddleware DepthMiddleware is used for tracking the depth of each Request inside the site being scraped. It works by setting `request.meta['depth'] = 0` whenever there is no value previously set (usually just the first Request) and incrementing it by 1 otherwise. Each middleware component is a Python class that defines one or more of the following methods: Filter out unsuccessful (erroneous) HTTP responses so that spiders don't have to deal with them, which (most of the time) imposes an overhead, consumes more resources, and makes the spider logic more complex. Filters out Requests for URLs outside the domains covered by the spider. Filters out requests with URLs longer than URLLENGTH_LIMIT Finally, keep in mind that some middlewares may need to be enabled through a particular setting. See each middleware documentation for more info. For a list of the components enabled by default (and their orders) see the :setting:`SPIDER_MIDDLEWARES_BASE` setting. For example, if you want your spider to handle 404 responses you can do this:: For more information see: `HTTP Status Code Definitions`_. HTTPERROR_ALLOWED_CODES HTTPERROR_ALLOW_ALL Here's an example:: However, it is NOT Scrapy's default referrer policy (see :class:`DefaultReferrerPolicy`). HttpErrorMiddleware HttpErrorMiddleware settings If it raises an exception, Scrapy won't bother calling any other spider middleware :meth:`process_spider_input` and will call the request errback.  The output of the errback is chained back in the other direction for :meth:`process_spider_output` to process it, or :meth:`process_spider_exception` if it raised an exception. If it returns ``None``, Scrapy will continue processing this exception, executing any other :meth:`process_spider_exception` in the following middleware components, until no middleware components are left and the exception reaches the engine (where it's logged and discarded). If it returns ``None``, Scrapy will continue processing this response, executing all other middlewares until, finally, the response is handed to the spider for processing. If it returns an iterable the :meth:`process_spider_output` pipeline kicks in, and no other :meth:`process_spider_exception` will be called. If present, this classmethod is called to create a middleware instance from a :class:`~scrapy.crawler.Crawler`. It must return a new instance of the middleware. Crawler object provides access to all Scrapy core components like settings and signals; it is a way for middleware to access them and hook its functionality into Scrapy. If the request has the :attr:`~scrapy.http.Request.dont_filter` attribute set, the offsite middleware will allow the request even if its domain is not listed in allowed domains. If the spider doesn't define an :attr:`~scrapy.spiders.Spider.allowed_domains` attribute, or the attribute is empty, the offsite middleware will allow all requests. If you still want to process response codes outside that range, you can specify which response codes the spider is able to handle using the ``handle_httpstatus_list`` spider attribute or :setting:`HTTPERROR_ALLOWED_CODES` setting. If you want to disable a builtin middleware (the ones defined in :setting:`SPIDER_MIDDLEWARES_BASE`, and enabled by default) you must define it in your project :setting:`SPIDER_MIDDLEWARES` setting and assign `None` as its value.  For example, if you want to disable the off-site middleware:: It can be used to limit the maximum depth to scrape, control Request priority based on their depth, and things like that. It receives an iterable (in the ``start_requests`` parameter) and must return another iterable of :class:`~scrapy.http.Request` objects. Keep in mind, however, that it's usually a bad idea to handle non-200 responses, unless you really know what you're doing. Note: The policy's name doesn't lie; it is unsafe. This policy will leak origins and paths from TLS-protected resources to insecure origins. Carefully consider the impact of setting such a policy for potentially sensitive documents. OffsiteMiddleware Parameters Pass all responses with non-200 status codes contained in this list. Pass all responses, regardless of its status code. Populates Request ``Referer`` header, based on the URL of the Response which generated it. REFERER_ENABLED REFERRER_POLICY RefererMiddleware RefererMiddleware settings Requests from TLS-protected clients to non- potentially trustworthy URLs, on the other hand, will contain no referrer information. A Referer HTTP header will not be sent. Requests from TLS-protected clients to non-potentially trustworthy URLs, on the other hand, will contain no referrer information. A Referer HTTP header will not be sent. Requests from TLS-protected request clients to non- potentially trustworthy URLs, on the other hand, will contain no referrer information. A Referer HTTP header will not be sent. Scrapy's default referrer policy — just like `"no-referrer-when-downgrade"`_, the W3C-recommended value for browsers — will send a non-empty "Referer" header from any ``http(s)://`` to any ``https://`` URL, even if the domain is different. Spider Middleware String value The "no-referrer-when-downgrade" policy sends a full URL along with requests from a TLS-protected environment settings object to a potentially trustworthy URL, and requests from clients which are not TLS-protected to any origin. The "origin" policy specifies that only the ASCII serialization of the origin of the request client is sent as referrer information when making both same-origin requests and cross-origin requests from a particular request client. The "origin-when-cross-origin" policy specifies that a full URL, stripped for use as a referrer, is sent as referrer information when making same-origin requests from a particular request client, and only the ASCII serialization of the origin of the request client is sent as referrer information when making cross-origin requests from a particular request client. The "same-origin" policy specifies that a full URL, stripped for use as a referrer, is sent as referrer information when making same-origin requests from a particular request client. The "strict-origin" policy sends the ASCII serialization of the origin of the request client when making requests: - from a TLS-protected environment settings object to a potentially trustworthy URL, and - from non-TLS-protected environment settings objects to any origin. The "strict-origin-when-cross-origin" policy specifies that a full URL, stripped for use as a referrer, is sent as referrer information when making same-origin requests from a particular request client, and only the ASCII serialization of the origin of the request client when making cross-origin requests: The "unsafe-url" policy specifies that a full URL, stripped for use as a referrer, is sent along with both cross-origin requests and same-origin requests made from a particular request client. The :class:`DepthMiddleware` can be configured through the following settings (see the settings documentation for more info): The :class:`UrlLengthMiddleware` can be configured through the following settings (see the settings documentation for more info): The :setting:`SPIDER_MIDDLEWARES` setting is merged with the :setting:`SPIDER_MIDDLEWARES_BASE` setting defined in Scrapy (and not meant to be overridden) and then sorted by order to get the final sorted list of enabled middlewares: the first middleware is the one closer to the engine and the last is the one closer to the spider. In other words, the :meth:`~scrapy.spidermiddlewares.SpiderMiddleware.process_spider_input` method of each middleware will be invoked in increasing middleware order (100, 200, 300, ...), and the :meth:`~scrapy.spidermiddlewares.SpiderMiddleware.process_spider_output` method of each middleware will be invoked in decreasing order. The ``handle_httpstatus_list`` key of :attr:`Request.meta <scrapy.http.Request.meta>` can also be used to specify which response codes to allow on a per-request basis. You can also set the meta key ``handle_httpstatus_all`` to ``True`` if you want to allow any response code for a request. The simplest policy is "no-referrer", which specifies that no referrer information is to be sent along with requests made from a particular request client to any origin. The header will be omitted entirely. The spider middleware is a framework of hooks into Scrapy's spider processing mechanism where you can plug custom functionality to process the responses that are sent to :ref:`topics-spiders` for processing and to process the requests and items that are generated from spiders. This is a user agent's default behavior, if no policy is otherwise specified. This method is called for each response that goes through the spider middleware and into the spider, for processing. This method is called when a spider or :meth:`process_spider_input` method (from other spider middleware) raises an exception. This method is called with the results returned from the Spider, after it has processed the response. This method is called with the start requests of the spider, and works similarly to the :meth:`process_spider_output` method, except that it doesn't have a response associated and must return only requests (not items). This middleware filters out every request whose host names aren't in the spider's :attr:`~scrapy.spiders.Spider.allowed_domains` attribute. All subdomains of any domain in the list are also allowed. E.g. the rule ``www.example.org`` will also allow ``bob.www.example.org`` but not ``www2.example.com`` nor ``example.com``. This page describes all spider middleware components that come with Scrapy. For information on how to use them and how to write your own spider middleware, see the :ref:`spider middleware usage guide <topics-spider-middleware>`. To activate a spider middleware component, add it to the :setting:`SPIDER_MIDDLEWARES` setting, which is a dict whose keys are the middleware class path and their values are the middleware orders. To avoid filling the log with too much noise, it will only print one of these messages for each new domain filtered. So, for example, if another request for ``www.othersite.com`` is filtered, no log message will be printed. But if a request for ``someothersite.com`` is filtered, a message will be printed (but only for the first request filtered). To decide which order to assign to your middleware see the :setting:`SPIDER_MIDDLEWARES_BASE` setting and pick a value according to where you want to insert the middleware. The order does matter because each middleware performs a different action and your middleware could depend on some previous (or subsequent) middleware being applied. UrlLengthMiddleware When implementing this method in your spider middleware, you should always return an iterable (that follows the input one) and not consume all ``start_requests`` iterator because it can be very large (or even unbounded) and cause a memory overflow. The Scrapy engine is designed to pull start requests while it has capacity to process them, so the start requests iterator can be effectively endless where there is some other condition for stopping the spider (like a time limit or item/page count). When your spider returns a request for a domain not belonging to those covered by the spider, this middleware will log a debug message similar to this one:: Whether to enable referer middleware. Writing your own spider middleware You can also set the Referrer Policy per request, using the special ``"referrer_policy"`` :ref:`Request.meta <topics-request-meta>` key, with the same acceptable values as for the ``REFERRER_POLICY`` setting. `"no-referrer"`_ `"no-referrer-when-downgrade"`_ `"origin"`_ `"origin-when-cross-origin"`_ `"same-origin"`_ `"same-origin"`_ may be a better choice if you want to remove referrer information for cross-domain requests. `"strict-origin"`_ `"strict-origin-when-cross-origin"`_ `"unsafe-url"`_ `Referrer Policy`_ to apply when populating Request "Referer" header. ``"scrapy-default"`` (default) crawler that uses this middleware either a path to a ``scrapy.spidermiddlewares.referer.ReferrerPolicy`` subclass — a custom policy or one of the built-in ones (see classes below), from a TLS-protected environment settings object to a potentially trustworthy URL, and from non-TLS-protected environment settings objects to any origin. https://www.w3.org/TR/referrer-policy/#referrer-policy-no-referrer https://www.w3.org/TR/referrer-policy/#referrer-policy-no-referrer-when-downgrade https://www.w3.org/TR/referrer-policy/#referrer-policy-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-origin-when-cross-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-same-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-strict-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-strict-origin-when-cross-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-unsafe-url or one of the standard W3C-defined string values, or the special ``"scrapy-default"``. the exception raised the response being processed the response being processed when the exception was raised the response which generated this output from the spider the result returned by the spider the spider for which this response is intended the spider to whom the start requests belong the spider which raised the exception the spider whose result is being processed the start requests 