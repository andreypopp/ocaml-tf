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

type google_integration_connectors_endpoint_attachment

val google_integration_connectors_endpoint_attachment :
  ?description:string prop ->
  ?endpoint_global_access:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  service_attachment:string prop ->
  unit ->
  google_integration_connectors_endpoint_attachment

val yojson_of_google_integration_connectors_endpoint_attachment :
  google_integration_connectors_endpoint_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  endpoint_global_access : bool prop;
  endpoint_ip : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_attachment : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?endpoint_global_access:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  service_attachment:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?endpoint_global_access:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  service_attachment:string prop ->
  string ->
  t Tf_core.resource
