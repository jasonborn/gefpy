gefpy.gef_to_gem_cy
===========================

Provides access to the gef2gem interface.

.. py:class:: GefToGem(strout, strsn, boutexon)

    .. py:method:: bgef2gem(self, strbgef, binsize)

        Create bgem file by bgef.

        :param strbgef: the bgef file path
        :param binsize: set the binsize

    .. py:method:: cgef2gem(self, strbgef, binsize)

        Create cgem file by cgef and bgef.

        :param strcgef: the cgef file path
        :param strbgef: the bgef file path