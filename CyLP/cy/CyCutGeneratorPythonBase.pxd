from CyCglCutGeneratorBase cimport *
from CyOsiSolverInterface cimport CppOsiSolverInterface, CyOsiSolverInterface
from CyOsiCuts cimport CppOsiCuts, CyOsiCuts
from CyCglTreeInfo cimport CppCglTreeInfo, CyCglTreeInfo
cimport cython.operator.dereference as deref
from CyLP.cy.CyClpSimplex cimport CyClpSimplex, CppIClpSimplex
from CyLP.cy.CyCoinIndexedVector cimport CyCoinIndexedVector

cdef class CyCutGeneratorPythonBase(CyCglCutGeneratorBase):
	cdef generateCuts(self, CppOsiSolverInterface *si,
                                     CppOsiCuts *cs,
                                     CppCglTreeInfo info)
	cdef CppCglCutGenerator * clone(self)
	cdef object cutGeneratorObject