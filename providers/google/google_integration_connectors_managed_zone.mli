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

type google_integration_connectors_managed_zone

val google_integration_connectors_managed_zone :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dns:string prop ->
  name:string prop ->
  target_project:string prop ->
  target_vpc:string prop ->
  unit ->
  google_integration_connectors_managed_zone

val yojson_of_google_integration_connectors_managed_zone :
  google_integration_connectors_managed_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  dns : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  target_project : string prop;
  target_vpc : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dns:string prop ->
  name:string prop ->
  target_project:string prop ->
  target_vpc:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  dns:string prop ->
  name:string prop ->
  target_project:string prop ->
  target_vpc:string prop ->
  string ->
  t Tf_core.resource
