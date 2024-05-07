(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filters

val filters :
  field:string prop -> value:string prop -> unit -> filters

type aws_pricing_product

val aws_pricing_product :
  ?id:string prop ->
  service_code:string prop ->
  filters:filters list ->
  unit ->
  aws_pricing_product

val yojson_of_aws_pricing_product : aws_pricing_product -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  result : string prop;
  service_code : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  service_code:string prop ->
  filters:filters list ->
  string ->
  t

val make :
  ?id:string prop ->
  service_code:string prop ->
  filters:filters list ->
  string ->
  t Tf_core.resource
