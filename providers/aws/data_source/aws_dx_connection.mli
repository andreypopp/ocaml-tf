(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dx_connection

val aws_dx_connection :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_dx_connection

val yojson_of_aws_dx_connection : aws_dx_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  aws_device : string prop;
  bandwidth : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  owner_account_id : string prop;
  partner_name : string prop;
  provider_name : string prop;
  tags : (string * string) list prop;
  vlan_id : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource
