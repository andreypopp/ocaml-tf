(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_vmwareengine_vcenter_credentials

val google_vmwareengine_vcenter_credentials :
  ?id:string prop ->
  parent:string prop ->
  unit ->
  google_vmwareengine_vcenter_credentials

val yojson_of_google_vmwareengine_vcenter_credentials :
  google_vmwareengine_vcenter_credentials -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  parent : string prop;
  password : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  parent:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  parent:string prop ->
  string ->
  t Tf_core.resource
