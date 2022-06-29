gefpy.cgef_reader_cy
===========================

Provides access to the cgef_reader interface.

.. py:class:: CgefR(filepath)

    .. py:method:: get_expression_num(self)

        Get the number of expression.

        :param etype: exception type
        :param value: exception value
        :param tb: traceback object
        :param integer limit: maximum number of stack frames to show
        :rtype: list of strings

    .. py:method:: get_cell_num(self)

        Get the number of cell.

    .. py:method:: get_gene_num(self)

        Get the number of gene.

    .. py:method:: get_gene_names(self)

        Get an array of gene names. The type of gene name is bytes.

    .. py:method:: get_cell_names(self)

        Get an array of cell ids.

    .. py:method:: get_cells(self)

        Get cells.

    .. py:method:: get_genes(self)

        Get genes.

    .. py:method:: restrict_region(self)

        Restrict to the input region.
        Some member variables (e.g. cell_num) of this class will be updated.

        :param min_x: set the minx
        :param max_x: set the maxx
        :param min_y: set the miny
        :param max_y: set the maxy

    .. py:method:: free_restriction(self)

        Free restrict_region and restrict_gene.
        Must call this function before reuse restrict_region.

    .. py:method:: get_cellid_and_count(self)

        Gets cellId and count from the geneExp dataset.

        :return:  (cell_id, count)

    .. py:method:: get_geneid_and_count(self)

        Gets geneId and count from the cellExp dataset.
        
        :return:  (gene_id, count)

    .. py:method:: get_cellborders(self)

        Gets cell borders.
        
        :return:  [borders]

