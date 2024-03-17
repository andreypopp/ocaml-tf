(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dx_hosted_connection

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

val aws_dx_hosted_connection :
  ?id:string prop ->
  bandwidth:string prop ->
  connection_id:string prop ->
  name:string prop ->
  owner_account_id:string prop ->
  vlan:float prop ->
  string ->
  t
