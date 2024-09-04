(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_netapp_kmsconfig

val google_netapp_kmsconfig :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  crypto_key_name:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_netapp_kmsconfig

val yojson_of_google_netapp_kmsconfig :
  google_netapp_kmsconfig -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  crypto_key_name : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  instructions : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  crypto_key_name:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  crypto_key_name:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
