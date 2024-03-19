(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_dx_hosted_connection

val aws_dx_hosted_connection :
  ?id:string prop ->
  bandwidth:string prop ->
  connection_id:string prop ->
  name:string prop ->
  owner_account_id:string prop ->
  vlan:float prop ->
  unit ->
  aws_dx_hosted_connection

val yojson_of_aws_dx_hosted_connection :
  aws_dx_hosted_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  aws_device : string prop;
  bandwidth : string prop;
  connection_id : string prop;
  has_logical_redundancy : string prop;
  id : string prop;
  jumbo_frame_capable : bool prop;
  lag_id : string prop;
  loa_issue_time : string prop;
  location : string prop;
  name : string prop;
  owner_account_id : string prop;
  partner_name : string prop;
  provider_name : string prop;
  region : string prop;
  state : string prop;
  vlan : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  bandwidth:string prop ->
  connection_id:string prop ->
  name:string prop ->
  owner_account_id:string prop ->
  vlan:float prop ->
  string ->
  t
