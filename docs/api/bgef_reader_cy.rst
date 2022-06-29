gefpy.bgef_reader_cy
===========================

Provides access to the bgef_reader interface. For reading common bin GEF.

.. py:class:: BgefR(filepath, bin_size, n_thread)

    .. py:attribute:: exp_len

        Get the number of expression.

    .. py:attribute:: gene_num

        Get the number of gene.

    .. py:method:: ttkk(self)

        Format the exception with a traceback.

        :param etype: exception type
        :param value: exception value
        :param tb: traceback object
        :param integer limit: maximum number of stack frames to show
        :rtype: list of strings

    .. py:method:: get_expression_num(self)

        Get the number of expression.

    .. py:method:: get_cell_num(self)

        Get the number of cell.

    .. py:method:: get_gene_num(self)

        Get the number of gene.

    .. py:method:: get_gene_names(self)

        Get an array of gene names.

    .. py:method:: get_cell_names(self)

        Get an array of cell ids.

    .. py:method:: get_gene_data(self)

        Get gene data.
        
        :return: (gene_index, gene_names)
        :rtype: list of strings

    .. py:method:: get_expression(self)

        Get the all expression from bgef.

        :return: exp

    .. py:method:: get_exp_data(self)

        Get sparse matrix indexes of expression data.

        :return: (uniq_cell, cell_index, count)

    .. py:method:: get_genedata_in_region(self, min_x, max_x, min_y, max_y, key)

        Get the gene exp matrix.

        :param min_x: exception type
        :param max_x: exception value
        :param min_y: traceback object
        :param max_y: traceback object
        :param key: traceback object
        :return: [x, y, umicnt]
    
    .. py:method:: get_offset(self)

        Get the offset in bgef.

        :return: [minx, miny]

    .. py:method:: get_exp_attr(self)

        Get the bgef attr.

        :return: [minx, miny, maxx, maxy, maxexp, resolution]

