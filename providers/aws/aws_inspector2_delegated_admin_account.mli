(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_inspector2_delegated_admin_account

val aws_inspector2_delegated_admin_account :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  unit ->
  aws_inspector2_delegated_admin_account

val yojson_of_aws_inspector2_delegated_admin_account :
  aws_inspector2_delegated_admin_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  relationship_status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  string ->
  t
