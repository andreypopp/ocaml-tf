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

type aws_dx_gateway_association

val aws_dx_gateway_association :
  ?allowed_prefixes:string prop list ->
  ?associated_gateway_id:string prop ->
  ?associated_gateway_owner_account_id:string prop ->
  ?id:string prop ->
  ?proposal_id:string prop ->
  ?vpn_gateway_id:string prop ->
  ?timeouts:timeouts ->
  dx_gateway_id:string prop ->
  unit ->
  aws_dx_gateway_association

val yojson_of_aws_dx_gateway_association :
  aws_dx_gateway_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_prefixes : string list prop;
  associated_gateway_id : string prop;
  associated_gateway_owner_account_id : string prop;
  associated_gateway_type : string prop;
  dx_gateway_association_id : string prop;
  dx_gateway_id : string prop;
  dx_gateway_owner_account_id : string prop;
  id : string prop;
  proposal_id : string prop;
  vpn_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_prefixes:string prop list ->
  ?associated_gateway_id:string prop ->
  ?associated_gateway_owner_account_id:string prop ->
  ?id:string prop ->
  ?proposal_id:string prop ->
  ?vpn_gateway_id:string prop ->
  ?timeouts:timeouts ->
  dx_gateway_id:string prop ->
  string ->
  t

val make :
  ?allowed_prefixes:string prop list ->
  ?associated_gateway_id:string prop ->
  ?associated_gateway_owner_account_id:string prop ->
  ?id:string prop ->
  ?proposal_id:string prop ->
  ?vpn_gateway_id:string prop ->
  ?timeouts:timeouts ->
  dx_gateway_id:string prop ->
  string ->
  t Tf_core.resource
