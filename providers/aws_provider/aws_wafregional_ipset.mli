(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafregional_ipset__ip_set_descriptor
type aws_wafregional_ipset

val aws_wafregional_ipset :
  ?id:string ->
  name:string ->
  ip_set_descriptor:aws_wafregional_ipset__ip_set_descriptor list ->
  string ->
  unit
