(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type workload_properties = {
  gcp_project : string prop;  (** gcp_project *)
  location : string prop;  (** location *)
  zone : string prop;  (** zone *)
}

type workload_reference = { uri : string prop  (** uri *) }
type google_apphub_discovered_workload

val google_apphub_discovered_workload :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  workload_uri:string prop ->
  unit ->
  google_apphub_discovered_workload

val yojson_of_google_apphub_discovered_workload :
  google_apphub_discovered_workload -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  workload_properties : workload_properties list prop;
  workload_reference : workload_reference list prop;
  workload_uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  workload_uri:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  workload_uri:string prop ->
  string ->
  t Tf_core.resource
