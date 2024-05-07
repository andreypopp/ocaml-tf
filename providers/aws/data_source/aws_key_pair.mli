(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_key_pair

val aws_key_pair :
  ?id:string prop ->
  ?include_public_key:bool prop ->
  ?key_name:string prop ->
  ?key_pair_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_key_pair

val yojson_of_aws_key_pair : aws_key_pair -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  create_time : string prop;
  fingerprint : string prop;
  id : string prop;
  include_public_key : bool prop;
  key_name : string prop;
  key_pair_id : string prop;
  key_type : string prop;
  public_key : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?include_public_key:bool prop ->
  ?key_name:string prop ->
  ?key_pair_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?include_public_key:bool prop ->
  ?key_name:string prop ->
  ?key_pair_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
