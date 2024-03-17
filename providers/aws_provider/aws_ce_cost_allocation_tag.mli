(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ce_cost_allocation_tag

type t = private {
  id : string prop;
  status : string prop;
  tag_key : string prop;
  type_ : string prop;
}

val aws_ce_cost_allocation_tag :
  ?id:string prop ->
  status:string prop ->
  tag_key:string prop ->
  string ->
  t
