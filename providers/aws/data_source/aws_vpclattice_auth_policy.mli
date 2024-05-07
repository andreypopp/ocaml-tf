(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpclattice_auth_policy

val aws_vpclattice_auth_policy :
  ?id:string prop ->
  ?policy:string prop ->
  ?state:string prop ->
  resource_identifier:string prop ->
  unit ->
  aws_vpclattice_auth_policy

val yojson_of_aws_vpclattice_auth_policy :
  aws_vpclattice_auth_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  policy : string prop;
  resource_identifier : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?policy:string prop ->
  ?state:string prop ->
  resource_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?policy:string prop ->
  ?state:string prop ->
  resource_identifier:string prop ->
  string ->
  t Tf_core.resource
