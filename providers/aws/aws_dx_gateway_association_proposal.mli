(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dx_gateway_association_proposal

val aws_dx_gateway_association_proposal :
  ?allowed_prefixes:string prop list ->
  ?id:string prop ->
  associated_gateway_id:string prop ->
  dx_gateway_id:string prop ->
  dx_gateway_owner_account_id:string prop ->
  unit ->
  aws_dx_gateway_association_proposal

val yojson_of_aws_dx_gateway_association_proposal :
  aws_dx_gateway_association_proposal -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allowed_prefixes : string list prop;
  associated_gateway_id : string prop;
  associated_gateway_owner_account_id : string prop;
  associated_gateway_type : string prop;
  dx_gateway_id : string prop;
  dx_gateway_owner_account_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_prefixes:string prop list ->
  ?id:string prop ->
  associated_gateway_id:string prop ->
  dx_gateway_id:string prop ->
  dx_gateway_owner_account_id:string prop ->
  string ->
  t

val make :
  ?allowed_prefixes:string prop list ->
  ?id:string prop ->
  associated_gateway_id:string prop ->
  dx_gateway_id:string prop ->
  dx_gateway_owner_account_id:string prop ->
  string ->
  t Tf_core.resource
