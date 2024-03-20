(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type drift_status = { status : string prop  (** status *) }
type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_controltower_landing_zone

val aws_controltower_landing_zone :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  manifest_json:string prop ->
  version:string prop ->
  unit ->
  aws_controltower_landing_zone

val yojson_of_aws_controltower_landing_zone :
  aws_controltower_landing_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  drift_status : drift_status list prop;
  id : string prop;
  latest_available_version : string prop;
  manifest_json : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  manifest_json:string prop ->
  version:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  manifest_json:string prop ->
  version:string prop ->
  string ->
  t Tf_core.resource
