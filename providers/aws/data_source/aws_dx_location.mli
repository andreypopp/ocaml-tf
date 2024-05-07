(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dx_location

val aws_dx_location :
  ?id:string prop ->
  location_code:string prop ->
  unit ->
  aws_dx_location

val yojson_of_aws_dx_location : aws_dx_location -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  available_macsec_port_speeds : string list prop;
  available_port_speeds : string list prop;
  available_providers : string list prop;
  id : string prop;
  location_code : string prop;
  location_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  location_code:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  location_code:string prop ->
  string ->
  t Tf_core.resource
