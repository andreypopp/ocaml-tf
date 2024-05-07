(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_networkmanager_attachment_accepter

val aws_networkmanager_attachment_accepter :
  ?id:string prop ->
  ?timeouts:timeouts ->
  attachment_id:string prop ->
  attachment_type:string prop ->
  unit ->
  aws_networkmanager_attachment_accepter

val yojson_of_aws_networkmanager_attachment_accepter :
  aws_networkmanager_attachment_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  attachment_id : string prop;
  attachment_policy_rule_number : float prop;
  attachment_type : string prop;
  core_network_arn : string prop;
  core_network_id : string prop;
  edge_location : string prop;
  id : string prop;
  owner_account_id : string prop;
  resource_arn : string prop;
  segment_name : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  attachment_id:string prop ->
  attachment_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  attachment_id:string prop ->
  attachment_type:string prop ->
  string ->
  t Tf_core.resource
