(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dx_lag

val aws_dx_lag :
  ?connection_id:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?provider_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  connections_bandwidth:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  aws_dx_lag

val yojson_of_aws_dx_lag : aws_dx_lag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  connection_id : string prop;
  connections_bandwidth : string prop;
  force_destroy : bool prop;
  has_logical_redundancy : string prop;
  id : string prop;
  jumbo_frame_capable : bool prop;
  location : string prop;
  name : string prop;
  owner_account_id : string prop;
  provider_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?connection_id:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?provider_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  connections_bandwidth:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?connection_id:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?provider_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  connections_bandwidth:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
