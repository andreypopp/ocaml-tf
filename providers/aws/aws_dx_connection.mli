(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_dx_connection

val aws_dx_connection :
  ?encryption_mode:string prop ->
  ?id:string prop ->
  ?provider_name:string prop ->
  ?request_macsec:bool prop ->
  ?skip_destroy:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  bandwidth:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  aws_dx_connection

val yojson_of_aws_dx_connection : aws_dx_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  aws_device : string prop;
  bandwidth : string prop;
  encryption_mode : string prop;
  has_logical_redundancy : string prop;
  id : string prop;
  jumbo_frame_capable : bool prop;
  location : string prop;
  macsec_capable : bool prop;
  name : string prop;
  owner_account_id : string prop;
  partner_name : string prop;
  port_encryption_status : string prop;
  provider_name : string prop;
  request_macsec : bool prop;
  skip_destroy : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vlan_id : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?encryption_mode:string prop ->
  ?id:string prop ->
  ?provider_name:string prop ->
  ?request_macsec:bool prop ->
  ?skip_destroy:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  bandwidth:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t
