ή    ?                      B     Ί   P       E        Υ  ]   d  ο   Β  :   ²  ?   ν  U   -  \     Y   ΰ  €   :	  q   ί	  e   Q
  B   ·
     ϊ
            I  0     z     	  ½       Π  H   Χ  $         E  U   Π  ;   &    b  Y   g     Α  2   W  ΰ     T   k  8   ΐ  `   ω  η   Z     B     _  Τ   φ  Δ   Λ  (     _   Ή          &  Ό   <  )   ω     #     Ό  C   Δ  ^        g  S        Ψ  )   ν  F     0   ^  Ό     M   L          £  t  ²  F   '  ϊ   n  »   i  5   %   }   [   f   Ω     @!  A   T"  Q   "  ~   θ"  b   g#     Κ#  Λ   J$  s   %  i   %  ?   τ%     4&     P&     a&  _  }&  Ή   έ'     (  ΐ   ₯(  7  f)  l   *     +  ί   '+  P   ,  D   X,  ό   ,     -  Η   +.  I   σ.  ϋ   =/  m   90  ?   §0  x   η0    `1     i2  ―   2    43  Ψ   P4  L   )5  |   v5     σ5      6  Μ   6  #   μ6  Θ   7     Ω7  M   μ7  h   :8     £8  [   Ί8     9  .   %9  P   T9  5   ₯9  Σ   Ϋ9  L   ―:     ό:     ;   *(Optional)* Install Scrapy inside an isolated python environment. *(Recommended)* **Don't** use system python, install a new, updated version that doesn't conflict with the rest of your system. Here's how to do it using the `homebrew`_ package manager: **Don't** use the ``python-scrapy`` package provided by Ubuntu, they are typically too old and slow to catch up with latest Scrapy. After any of these workarounds you should be able to install Scrapy:: Alternatively, if youβre already familiar with installation of Python packages, you can install Scrapy and its dependencies from PyPI with:: And if you want to install scrapy with Python 2, install scrapy within a Python 2 virtualenv. Building Scrapy's dependencies requires the presence of a C compiler and development headers. On OS X this is typically provided by Appleβs Xcode development tools. To install the Xcode command line tools open a terminal window and run:: Check this `user guide`_ on how to create your virtualenv. For more detailed and platform specifics instructions, read on. If you use Linux or OS X, `virtualenvwrapper`_ is a handy tool to create virtualenvs. If you want to install scrapy on Python 3, youβll also need Python 3 development headers:: If you want to install scrapy with Python 3, install scrapy within a Python 3 virtualenv. If you're using `Anaconda`_ or `Miniconda`_, you can install the package from the `conda-forge`_ channel, which has up-to-date packages for Linux, Windows and OS X. In case of any trouble related to these dependencies, please refer to their respective installation instructions: Inside a :ref:`virtualenv <intro-using-virtualenv>`, you can install Scrapy with ``pip`` after that:: Install `homebrew`_ following the instructions in https://brew.sh/ Install python:: Installation guide Installing Scrapy Instead, we recommend that you install scrapy within a so-called "virtual environment" (`virtualenv`_). Virtualenvs allow you to not conflict with already-installed Python system packages (which could break some of your system tools and scripts), and still install packages normally with ``pip`` (without ``sudo`` and the likes). Latest versions of python have ``pip`` bundled with them so you won't need to install it separately. If this is not the case, upgrade python:: Mac OS X Note that sometimes this may require solving compilation issues for some Scrapy dependencies depending on your operating system, so be sure to check the :ref:`intro-install-platform-notes`. Once you have created a virtualenv, you can install scrapy inside it with ``pip``, just like any other Python package. (See :ref:`platform-specific guides <intro-install-platform-notes>` below for non-Python dependencies that you may need to install beforehand). Once you've installed `Anaconda`_ or `Miniconda`_, install Scrapy with:: Platform specific installation notes Python packages can be installed either globally (a.k.a system wide), or in user-space. We do not recommend installing scrapy system wide. Python virtualenvs can be created to use Python 2 by default, or Python 3 by default. Reload ``.bashrc`` to ensure the changes have taken place:: Scrapy is currently tested with recent-enough versions of lxml, twisted and pyOpenSSL, and is compatible with recent Ubuntu distributions. But it should support older versions of Ubuntu too, like Ubuntu 12.04, albeit with potential issues with TLS connections. Scrapy is written in pure Python and depends on a few key Python packages (among others): Scrapy may work with older versions of these packages but it is not guaranteed it will continue working because itβs not being tested against them. Scrapy runs on Python 2.7 and Python 3.3 or above. Some of these packages themselves depends on non-Python packages that might require additional installation steps depending on your platform. Please check :ref:`platform-specific guides below <intro-install-platform-notes>`. TL;DR: We recommend installing Scrapy inside a virtual environment on all platforms. The minimal versions which Scrapy is tested against are: The same non-python dependencies can be used to install Scrapy in Debian Wheezy (7.0) and above. There's a `known issue <https://github.com/pypa/pip/issues/2468>`_ that prevents ``pip`` from updating system packages. This has to be addressed to successfully install Scrapy and its dependencies. Here are some proposed solutions: Things that are good to know This method is a workaround for the above OS X issue, but it's an overall good practice for managing dependencies and can complement the first method. Though it's possible to install Scrapy on Windows using pip, we recommend you to install `Anaconda`_ or `Miniconda`_ and use the package from the `conda-forge`_ channel, which will avoid most installation issues. To get started with virtual environments, see `virtualenv installation instructions`_. To install it globally (having it globally installed actually helps here), it should be a matter of running:: To install Scrapy using ``conda``, run:: To install scrapy on Ubuntu (or Ubuntu-based) systems, you need to install these dependencies:: Twisted 14.0 Ubuntu 12.04 or above Update your ``PATH`` variable to state that homebrew packages should be used before system packages (Change ``.bashrc`` to ``.zshrc`` accordantly if you're using `zsh`_ as default shell):: Using a virtual environment (recommended) We strongly recommend that you install Scrapy in :ref:`a dedicated virtualenv <intro-using-virtualenv>`, to avoid conflicting with your system packages. Windows ``libssl-dev`` and ``libffi-dev`` are required for ``cryptography`` ``python-dev``, ``zlib1g-dev``, ``libxml2-dev`` and ``libxslt1-dev`` are required for ``lxml`` `cryptography installation`_ `cryptography`_ and `pyOpenSSL`_, to deal with various network-level security needs `lxml installation`_ `lxml`_, an efficient XML and HTML parser `parsel`_, an HTML/XML data extraction library written on top of lxml, `twisted`_, an asynchronous networking framework `virtualenv`_ is a tool you can use to create virtual environments in python. We recommended reading a tutorial like http://docs.python-guide.org/en/latest/dev/virtualenvs/ to get started. `w3lib`_, a multi-purpose helper for dealing with URLs and web page encodings lxml 3.4 pyOpenSSL 0.14 Project-Id-Version: Scrapy 1.4
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
 *(μ ν)* λΆλ¦¬λ νμ΄μ¬ νκ²½μ μ€ν¬λνΌλ₯Ό μ€μΉνλΌ. *(μΆμ²)* μμ€ν νμ΄μ¬μ μ¬μ©νμ§ **λ§κ³ ** μ¬μ©μμ μμ€νκ³Ό μΆ©λμ μΌμΌν€μ§ μλ μλ°μ΄νΈ λ μλ‘μ΄ λ²μ μ μ€μΉνλΌ. `homebrew`_ ν¨ν€μ§ λ§€λμ λ₯Ό μ¬μ©ν΄μ μ€μΉνλ λ²μ μλμ κ°λ€: μΌλ°μ μΌλ‘ λλ¬΄ μ€λλ λ²μ μ΄κ³  μ΅μ  λ²μ μ λ°λΌμ‘λλ° λλ¦¬κΈ° λλ¬Έμ μ°λΆν¬μμ μ κ³΅νλ ``python-scrapy`` ν¨ν€μ§λ₯Ό μ¬μ©νλ©΄ **μ** λλ€. ν΄κ²°μ΄ λμμΌλ©΄ μ€ν¬λνΌλ₯Ό μ€μΉνλ€:: νμ΄μ¬ ν¨ν€μ§ μ€μΉμ μ΅μνλ€λ©΄ μ€ν¬λνΌμ μμ‘΄μ±μΌλ‘ PyPIλ‘ μλμ κ°μ΄ μ€μΉν  μ μλ€:: λ§μ½ νμ΄μ¬ 2 μ©μΌλ‘ μ€μΉνκ³  μΆλ€λ©΄, νμ΄μ¬ 2 κ°μ νκ²½μ μ€μΉνλ©΄ λλ€. μ€ν¬λνΌμ μμ‘΄μ±μ μ€μΉλ C μ»΄νμΌλ¬μ κ°λ° ν€λλ₯Ό νμλ‘ νλλ°. OS Xμμλ μΌλ°μ μΌλ‘ μ νμ Xcode κ°λ° λκ΅¬λ₯Ό ν΅ν΄ μ κ³΅λλ€.Xcode μ»€λ§¨λ λΌμΈ λκ΅¬λ₯Ό μ€μΉνλ €λ©΄ ν°λ―Έλ μ°½μ μ΄κ³  λ€μμ μ€ννλΌ:: κ°μ νκ²½ μμ±μ `μ¬μ©μ κ°μ΄λ`_\ λ₯Ό μ°Έκ³ νλΌ. λ μμΈν μ λ³΄μ νλ«νΌ μΈλΆ μλ΄λ μμΌλ‘ μ€λͺν  κ²μ΄λ€. Linux λλ OS Xλ₯Ό μ¬μ©νλ κ²½μ°, `virtualenvwrapper`_\ λ₯Ό μ¬μ©ν΄μ μ½κ² κ°μ νκ²½μ μμ±ν  μ μλ€. νμ΄μ¬ 3μ μ€ν¬λνΌλ₯Ό μ€μΉνκ³  μΆμΌλ©΄, νμ΄μ¬ 3 κ°λ° ν€λλ νμνλ€:: μ€ν¬λνΌλ₯Ό νμ΄μ¬ 3 μ©μΌλ‘ μ€μΉνκ³  μΆλ€λ©΄, νμ΄μ¬ 3 κ°μ νκ²½μ μ€ν¬λνΌλ₯Ό μ€μΉνλ©΄ λλ€. `Anaconda`_ λλ `Miniconda`_\ λ₯Ό μ¬μ©νκ³  μλ€λ©΄, λ¦¬λμ€, μλμ°, OS Xλ₯Ό μν μ΅μ  ν¨ν€μ§λ₯Ό λ³΄μ νκ³  μλ `conda-forge`_ μ±λλ‘λΆν° ν¨ν€μ§λ₯Ό μ€μΉν  μ μλ€. μ΄ μμ‘΄μ±μ κ΄ν΄μ λ¬Έμ κ° μλ κ²½μ°, κ° λΌμ΄λΈλ¬λ¦¬μ μ€μΉ μλ΄λ₯Ό μ°Έκ³ νκΈ° λ°λλ€: :ref:`κ°μ νκ²½ <intro-using-virtualenv>`\ μμ ``pip``\ λ‘ μ€ν¬λνΌλ₯Ό μ€μΉν  μ μλ€:: https://brew.sh/ μλ΄μ λ°λΌ `homebrew`_\ λ₯Ό μ€μΉνλΌ νμ΄μ¬μ μ€μΉνλΌ:: μ€μΉ κ°μ΄λ μ€ν¬λνΌ(Scrapy) μ€μΉ λμ , μμ "κ°μ νκ²½"(`virtualenv`_)μ΄λΌ λΆλ¦¬λ κ³³μ μ€μΉν  κ²μ μΆμ²νλ€. κ°μ νκ²½μ μ΄λ―Έ μ€μΉλ νμ΄μ¬ μμ€ν ν¨ν€μ§μ μΆ©λ(μμ€ν λκ΅¬λ μ€ν¬λ¦½νΈλ₯Ό λ§κ°λ¨λ¦΄ μ μλ€)νμ§ μκ² λ§λ€μ΄ μ£Όλ©° (``sudo`` κ°μ κ² μμ΄) ``pip``\ λ‘ μ μμ μΌλ‘ μ€μΉν  μ μκ² νλ€. μ΅μ  λ²μ μ νμ΄μ¬μ ``pip``\ λ₯Ό λ²λ€λ‘ ν¬ν¨νκ³  μλ€. λ°λΌμ λ°λ‘ μ€μΉν  νμκ° μλ€. κ·Έλ μ§ μμ κ²½μ°μλ νμ΄μ¬μ μκ·Έλ μ΄λνλΌ:: λ§₯(Mac) OS X μ’μ’ μ΄μμ²΄μ μ λ°λΌμ μ€ν¬λνΌ μμ‘΄μ±μ λν μ»΄νμΌ λ¬Έ ν΄κ²°μ μκ΅¬νλ κ²½μ°λ μλ€. κ·Έλ¬λ©΄ :ref:`intro-install-platform-notes`\ λ₯Ό νμΈν΄ λ³΄μλΌ. κ°μ νκ²½μ μμ±νκ³  λλ©΄, κ°μ νκ²½ μμ  λ€λ₯Έ ν¨ν€μ§μ λ§μ°¬κ°μ§λ‘ ``pip``\ λ‘ μ€ν¬λνΌλ₯Ό μ€μΉν  μ μλ€. (λ¨Όμ  μ€μΉν  νμκ° μλ λΉνμ΄μ¬ μμ‘΄μ±μ λν΄μλ μλμ :ref:`νλ«νΌ λ³ κ°μ΄λ <intro-install-platform-notes>`\ λ₯Ό μ°Έκ³ νλΌ.) μ΄λ―Έ `Anaconda`_ λλ `Miniconda`_\ μ μ€μΉνλ€λ©΄, μλμ κ°μ΄ μ€ν¬λνΌλ₯Ό μ€μΉνλΌ:: νλ«νΌ λ³ μ€μΉ μλ΄ νμ΄μ¬ ν¨ν€μ§λ μ μ­(μμ€ν μ μ²΄ λ²μ)μ μ€μΉλ  μλ μκ³  μ¬μ©μ κ³΅κ°μ μ€μΉλ  μλ μλ€. μ°λ¦¬λ μ€ν¬λνΌλ₯Ό μμ€ν μ μ²΄ λ²μμ μ€μΉνλ κ²μ μΆμ²νμ§ μλλ€. νμ΄μ¬ κ°μνκ²½μ νμ΄μ¬ 2λ 3μ κΈ°λ³ΈμΌλ‘ μμ±ν  μ μλ€. λ³κ²½μ΄ μ λλ‘ λλλ‘ ``.bashrc``\ λ₯Ό λ€μ λ‘λνλΌ:: μ€ν¬λνΌλ μ΅μ  λ²μ μ lxml, twisted, pyOpenSSLλ‘ νμ€νΈλμμΌλ©°, μ΅μ  μ°λΆν¬ ν¨ν¬ λ²μ κ³Ό νΈνμ΄ κ°λ₯νλ€. νμ§λ§ μ μ¬μ μΈ TLS μ°κ²° λ¬Έμ κ° μμ§λ§ 12.04 κ°μ μ΄μ  λ²μ μ μ°λΆν¬λ μ§μνλ€. μ€ν¬λνΌλ μμν νμ΄μ¬μΌλ‘ μμ±λμμΌλ©° λͺ κ°μ§ ν΅μ¬ νμ΄μ¬ ν¨ν€μ§μ μμ‘΄νλ€ (λ€λ₯Έ κ²λ€ μ€μμλ): μ€ν¬λνΌλ μ€λλ λ²μ μ ν¨ν€μ§μμλ μλν  μ μμ§λ§ μ΄μ  λ²μ μ λν΄μλ νμ€νΈκ° λμ§ μμκΈ° λλ¬Έμ κ³μ μλμ ν μ§λ λ³΄μ₯λμ§ μλλ€. μ€ν¬λνΌλ νμ΄μ¬ 2.7κ³Ό νμ΄μ¬ 3.3 μ΄μμμ μ€νλλ€. νλ«νΌμ λ°λΌμλ μ΄ ν¨ν€μ§μ€ μΌλΆκ° νμ΄μ¬μ΄ μλ ν¨ν€μ§μ μμ‘΄ν΄μ μΆκ°μ μΈ μ€μΉ κ³Όμ μ μκ΅¬ν  μλ μλ€. μλμ μλ :ref:`νλ«νΌ λ³ κ°μ΄λ <intro-install-platform-notes>`\ λ₯Ό μ°Έκ³ νλΌ. TL;DR: μ°λ¦¬λ νλ«νΌμ μκ΄μμ΄ κ°μ νκ²½μ μ€ν¬λνΌλ₯Ό μ€μΉνλ κ²μ μΆμ²νλ€. μ€ν¬λνΌκ° νμ€νΈλ μ΅μ  λ²μ μ λ€μκ³Ό κ°λ€: Debian Wheezy (7.0) μ΄μμμ λμΌν λΉνμ΄μ¬ μμ‘΄μ±μ΄ μ€ν¬λνΌ μ€μΉλ₯Ό μν΄ μ¬μ©λ  μ μλ€. ``pip``\ μ μμ€ν ν¨ν€μ§ μλ°μ΄νΈλ₯Ό λ§λ `λ¬Έμ  <https://github.com/pypa/pip/issues/2468>`_\ κ° μλ€. μ΄λ μ€ν¬λνΌμ μμ‘΄μ± μ€μΉλ₯Ό μ±κ³΅μ μΌλ‘ νκΈ° μν΄μ ν΄κ²°λμ΄μΌ νλ€. μ μλλ ν΄κ²°μ²΅μ λ€μκ³Ό κ°λ€: μμλλ©΄ μ’μ κ²λ€ μ΄ λ°©λ²μ μμ OS X λ¬Έμ λ₯Ό μν ν΄κ²°λ°©λ²μ΄μ§λ§, μμ‘΄μ± κ΄λ¦¬λ₯Ό μν μ λ°μ μΈ μ’μ λ°©λ²μ΄λ©°, μ²« λ²μ§Έ λ°©λ²μ λ³΄μν  μ μμ΅λλ€. μλμ°μ pipλ₯Ό μ¬μ©ν΄μ μ€ν¬λνΌλ₯Ό μ€μΉνλ κ²μ΄ κ°λ₯νμ§λ§, λλΆλΆμ μ€μΉ λ¬Έμ λ₯Ό νΌν  μ μκΈ° λλ¬Έμ `Anaconda`_ λλ `Miniconda`_\ λ₯Ό μ€μΉ ν νμ `conda-forge`_ μ±λμ μ¬μ©ν΄μ μ€ν¬λνΌλ₯Ό μ€μΉν  κ²μ μΆμ²νλ€. κ°μ νκ²½μ λν΄ μμλ³΄λ €λ©΄ `κ°μ νκ²½ μ€μΉ μλ΄`_\ λ₯Ό μ°Έκ³ νλΌ. μ μ­μΌλ‘ μ€μΉνλ €λ©΄ (μ¬κΈ°μλ μ μ­μΌλ‘ μ€μΉνλ κ²μ΄ λμμ΄ λλ€), λ€μμ μ€ννλ©΄ λλ€:: ``conda``\ λ₯Ό μ¬μ©ν΄μ μ€μΉνλ €λ©΄, μλμ κ°μ΄ μ€ννλΌ:: μ€ν¬λνΌλ₯Ό μ°λΆν¬(λλ μ°λΆν¬ κΈ°λ°) μμ€νμ μ€μΉνλ €λ©΄ μλμ μμ‘΄μ±μ μ€μΉν΄μΌ νλ€:: Twisted 14.0 μ°λΆν¬(Ubuntu) 12.04 μ΄μ ``PATH`` λ³μλ₯Ό μμ€ν ν¨ν€μ§ μ μ homebrew ν¨ν€μ§κ° μ¬μ©λλλ‘ μλ°μ΄νΈ νλΌ. (κΈ°λ³Έ μΈλ‘ `zsh`_\ λ₯Ό μ¬μ©νκ³  μμΌλ©΄ ``.bashrc``\ λ₯Ό ``.zshrc``\ λ‘ λ³κ²½νλΌ.):: κ°μ νκ²½ μ¬μ©νκΈ° (μΆμ²) λΉμ μ μμ€ν ν¨ν€μ§μ μΆ©λνλ κ²μ νΌνκΈ° μν΄μ μ€ν¬λνΌλ₯Ό :ref:`μ μ© κ°μ νκ²½ <intro-using-virtualenv>`\ μ μ€μΉνλ κ²μ κ°νκ² μΆμ²νλ λ°μ΄λ€. μλμ°(Windows) ``libssl-dev``, ``libffi-dev``\ λ ``cryptography``\ λ₯Ό μν΄ νμνλ€ ``python-dev``, ``zlib1g-dev``, ``libxml2-dev``, ``libxslt1-dev``\ λ ``lxml``\ μ μν΄ νμνλ€ `cryptography μ€μΉ`_ `cryptography`_\ κ³Ό `pyOpenSSL`_, λ€μν λ€νΈμν¬ μμ€ λ³΄μ μκ΅¬μ¬ν­ μ²λ¦¬ `lxml μ€μΉ`_ `lxml`_, ν¨μ¨μ μΈ XML, HTML νμ(parser) `parsel`_, lxml κΈ°λ°μΌλ‘ μμ±λ HTML/XML λ°μ΄ν° μΆμΆ λΌμ΄λΈλ¬λ¦¬ `twisted`_, λΉλκΈ°μ  λ€νΈμνΉ νλ μμν¬ `virtualenv`_\ λ νμ΄μ¬μμ κ°μ νκ²½μ μμ±νκΈ° μν΄ μ¬μ©νλ λκ΅¬μ΄λ€. μ°λ¦¬λ http://docs.python-guide.org/en/latest/dev/virtualenvs/ νν λ¦¬μΌμ μ½μ΄λ³Ό κ²μ μΆμ²νλ€. `w3lib`_, URL λ° μΉ νμ΄μ§ μΈμ½λ©μ μν λ€μ©λ ν¬νΌ(helper) lxml 3.4 pyOpenSSL 0.14 