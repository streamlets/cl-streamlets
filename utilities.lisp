;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-USER; Base: 10 -*-

;;;;     Copyright (C) 2014  Varoun. P

;;;;     This program is free software: you can redistribute it and/or modify
;;;;     it under the terms of the GNU Affero General Public License as
;;;;     published by the Free Software Foundation, either version 3 of the
;;;;     License, or (at your option) any later version.

;;;;     This program is distributed in the hope that it will be useful,
;;;;     but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;;     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;;;     GNU Affero General Public License for more details.

;;;;     You should have received a copy of the GNU Affero General Public License
;;;;     along with this program.  If not, see <http://www.gnu.org/licenses/>.


(in-package "STREAMLETS-IMPL")

;;; Managing symbols.

(defmacro with-gensyms ((&rest bindings) &body body)
  `(let ,(mapcar #'(lambda (binding) `(,binding (gensym ,(string binding)))) 
		 bindings)
     ,@body))

(defun kintern (format-string &rest format-args)
  "Interns a new symbol in the keyword package."
  (declare (dynamic-extent format-args))
  (intern (nstring-upcase (apply #'format nil format-string format-args))
	  "KEYWORD"))
