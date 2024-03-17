(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafregional_ipset__ip_set_descriptor
type aws_wafregional_ipset

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
}

val aws_wafregional_ipset :
  ?id:string prop ->
  name:string prop ->
  ip_set_descriptor:aws_wafregional_ipset__ip_set_descriptor list ->
  string ->
  t
