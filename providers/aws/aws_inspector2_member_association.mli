(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_inspector2_member_association

val aws_inspector2_member_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  unit ->
  aws_inspector2_member_association

val yojson_of_aws_inspector2_member_association :
  aws_inspector2_member_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  delegated_admin_account_id : string prop;
  id : string prop;
  relationship_status : string prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  string ->
  t Tf_core.resource
