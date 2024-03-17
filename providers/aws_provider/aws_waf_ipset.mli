(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_waf_ipset__ip_set_descriptors
type aws_waf_ipset

val aws_waf_ipset :
  ?id:string prop ->
  name:string prop ->
  ip_set_descriptors:aws_waf_ipset__ip_set_descriptors list ->
  string ->
  unit
