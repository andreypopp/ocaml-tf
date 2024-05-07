(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ce_cost_allocation_tag

val aws_ce_cost_allocation_tag :
  ?id:string prop ->
  status:string prop ->
  tag_key:string prop ->
  unit ->
  aws_ce_cost_allocation_tag

val yojson_of_aws_ce_cost_allocation_tag :
  aws_ce_cost_allocation_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  status : string prop;
  tag_key : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  status:string prop ->
  tag_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  status:string prop ->
  tag_key:string prop ->
  string ->
  t Tf_core.resource
