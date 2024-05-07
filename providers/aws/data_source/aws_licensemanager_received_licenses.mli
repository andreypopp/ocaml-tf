(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_licensemanager_received_licenses

val aws_licensemanager_received_licenses :
  ?id:string prop ->
  filter:filter list ->
  unit ->
  aws_licensemanager_received_licenses

val yojson_of_aws_licensemanager_received_licenses :
  aws_licensemanager_received_licenses -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arns : string list prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
