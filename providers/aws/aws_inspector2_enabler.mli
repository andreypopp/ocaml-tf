(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_inspector2_enabler

val aws_inspector2_enabler :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_ids:string prop list ->
  resource_types:string prop list ->
  unit ->
  aws_inspector2_enabler

val yojson_of_aws_inspector2_enabler : aws_inspector2_enabler -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_ids : string list prop;
  id : string prop;
  resource_types : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_ids:string prop list ->
  resource_types:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_ids:string prop list ->
  resource_types:string prop list ->
  string ->
  t Tf_core.resource
