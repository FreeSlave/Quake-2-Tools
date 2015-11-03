#!/bin/sh

(cd bsp/qbsp3 && make $*)
(cd bsp/qrad3 && make $*)
(cd bsp/qvis3 && make $*)

