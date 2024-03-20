(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attachments = {
  state : string prop;  (** state *)
  vpc_id : string prop;  (** vpc_id *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_internet_gateway

val aws_internet_gateway :
  ?id:string prop ->
  ?internet_gateway_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_internet_gateway

val yojson_of_aws_internet_gateway : aws_internet_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  attachments : attachments list prop;
  id : string prop;
  internet_gateway_id : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?internet_gateway_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?internet_gateway_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
