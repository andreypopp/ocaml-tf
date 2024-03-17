(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_gateway_association_proposal

type t = private {
  allowed_prefixes : string list prop;
  associated_gateway_id : string prop;
  associated_gateway_owner_account_id : string prop;
  associated_gateway_type : string prop;
  dx_gateway_id : string prop;
  dx_gateway_owner_account_id : string prop;
  id : string prop;
}

val aws_dx_gateway_association_proposal :
  ?allowed_prefixes:string prop list ->
  ?id:string prop ->
  associated_gateway_id:string prop ->
  dx_gateway_id:string prop ->
  dx_gateway_owner_account_id:string prop ->
  string ->
  t
