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


(in-package "CL-USER")

(asdf:defsystem :streamlets
  :name "Streamlets"
  :author "Varoun. P"
  :version "0.0.1"
  :licence "GNU AFFERO GENERAL PUBLIC LICENSE, Version 3"
  :maintainer '("Varoun. P")
  :description "The Streamlets Stream Processing Engine."
  :long-description "The Streamlets Stream Processing Engine."
  :depends-on (:bordeaux-threads)
  :serial t
  :components 
    ((:module "packages"
	      :serial t
	      :pathname #p""
	      :components  
	        ((:file "packages")))
     (:module "utilities"
	      :serial t
	      :pathname #p""
	      :components
	        ((:file "utilities")))))
