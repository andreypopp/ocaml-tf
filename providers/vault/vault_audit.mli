(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_audit

val vault_audit :
  ?description:string prop ->
  ?id:string prop ->
  ?local:bool prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  options:string prop Tf_core.assoc ->
  type_:string prop ->
  unit ->
  vault_audit

val yojson_of_vault_audit : vault_audit -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  local : bool prop;
  namespace : string prop;
  options : string Tf_core.assoc prop;
  path : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?local:bool prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  options:string prop Tf_core.assoc ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?local:bool prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  options:string prop Tf_core.assoc ->
  type_:string prop ->
  string ->
  t Tf_core.resource
