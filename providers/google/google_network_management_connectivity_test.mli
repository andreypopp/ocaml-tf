(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination

val destination :
  ?instance:string prop ->
  ?ip_address:string prop ->
  ?network:string prop ->
  ?port:float prop ->
  ?project_id:string prop ->
  unit ->
  destination

type source

val source :
  ?instance:string prop ->
  ?ip_address:string prop ->
  ?network:string prop ->
  ?network_type:string prop ->
  ?port:float prop ->
  ?project_id:string prop ->
  unit ->
  source

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_network_management_connectivity_test

val google_network_management_connectivity_test :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?protocol:string prop ->
  ?related_projects:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  destination:destination list ->
  source:source list ->
  unit ->
  google_network_management_connectivity_test

val yojson_of_google_network_management_connectivity_test :
  google_network_management_connectivity_test -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  protocol : string prop;
  related_projects : string list prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?protocol:string prop ->
  ?related_projects:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  destination:destination list ->
  source:source list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?protocol:string prop ->
  ?related_projects:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  destination:destination list ->
  source:source list ->
  string ->
  t Tf_core.resource
