(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule__allowed_parameter

val rule__allowed_parameter : key:string prop -> value:string prop list -> unit -> rule__allowed_parameter

type rule__denied_parameter

val rule__denied_parameter : key:string prop -> value:string prop list -> unit -> rule__denied_parameter

type rule

val rule :
  ?description:string prop ->
  ?max_wrapping_ttl:string prop ->
  ?min_wrapping_ttl:string prop ->
  ?required_parameters:string prop list ->
  ?allowed_parameter:rule__allowed_parameter list ->
  ?denied_parameter:rule__denied_parameter list ->
  capabilities:string prop list ->
  path:string prop ->
  unit ->
  rule

type vault_policy_document

val vault_policy_document :
  ?id:string prop -> ?namespace:string prop -> ?rule:rule list -> unit -> vault_policy_document

val yojson_of_vault_policy_document : vault_policy_document -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  hcl : string prop;
  id : string prop;
  namespace : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> ?namespace:string prop -> ?rule:rule list -> string -> t
val make : ?id:string prop -> ?namespace:string prop -> ?rule:rule list -> string -> t Tf_core.resource
