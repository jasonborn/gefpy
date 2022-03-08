# -*- coding: utf-8 -*-
# distutils: language=c++
# cython: language_level=3, boundscheck=False
# cython: c_string_type=unicode, c_string_encoding=utf8
# Created by huangzhibo on 2022/01/01

from libcpp.vector cimport vector
from libcpp.string cimport string
from libcpp cimport bool
from .gef cimport *


cdef extern from "bgef_reader.h" nogil:
    cdef cppclass BgefReader:
        BgefReader(const string& filename, int bin_size, int n_thread, bool verbose) except +
        unsigned int getGeneNum() const
        unsigned int getCellNum()
        unsigned int getExpressionNum() const

        Expression * getExpression()

        Expression * getReduceExpression()

        void getGeneNameList(vector[string] & gene_list)
        void getCellNameList(unsigned long long int * cell_name_list)
        unsigned long long int * getCellPos()

        vector[unsigned long long] getSparseMatrixIndicesOfExp(unsigned int * cell_index, unsigned int * count)
        vector[string] getSparseMatrixIndicesOfGene(unsigned int * gene_index)
        void getSparseMatrixIndicesOfGene(unsigned int * gene_index, char * gene_names)

        int getSparseMatrixIndices(unsigned int *indices, unsigned int *indptr, unsigned int *count)
        int getSparseMatrixIndices2(unsigned int *cell_ind, unsigned int *gene_ind, unsigned int *count)

        const unsigned int *getWholeExpMatrixShape()

        void readWholeExpMatrix(unsigned int offset_x,
                                unsigned int offset_y,
                                unsigned int rows,
                                unsigned int cols,
                                string & key,
                                unsigned char *matrix)

        void readWholeExpMatrix(string & key,
                                unsigned char *matrix)

        unsigned int toGem(string & filename)
        
        void getGeneExpInRegion(unsigned int min_x,unsigned int min_y, unsigned int max_x, unsigned int max_y, 
                                string &strgene, vector[Expression] &outExp);
        
        void getOffset(int *data)
