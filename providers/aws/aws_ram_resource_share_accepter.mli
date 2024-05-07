(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ram_resource_share_accepter

val aws_ram_resource_share_accepter :
  ?id:string prop ->
  ?timeouts:timeouts ->
  share_arn:string prop ->
  unit ->
  aws_ram_resource_share_accepter

val yojson_of_aws_ram_resource_share_accepter :
  aws_ram_resource_share_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  invitation_arn : string prop;
  receiver_account_id : string prop;
  resources : string list prop;
  sender_account_id : string prop;
  share_arn : string prop;
  share_id : string prop;
  share_name : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  share_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  share_arn:string prop ->
  string ->
  t Tf_core.resource
