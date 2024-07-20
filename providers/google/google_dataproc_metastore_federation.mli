(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type backend_metastores

val backend_metastores :
  metastore_type:string prop ->
  name:string prop ->
  rank:string prop ->
  unit ->
  backend_metastores

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dataproc_metastore_federation

val google_dataproc_metastore_federation :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  federation_id:string prop ->
  version:string prop ->
  backend_metastores:backend_metastores list ->
  unit ->
  google_dataproc_metastore_federation

val yojson_of_google_dataproc_metastore_federation :
  google_dataproc_metastore_federation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  effective_labels : (string * string) list prop;
  endpoint_uri : string prop;
  federation_id : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  state_message : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  federation_id:string prop ->
  version:string prop ->
  backend_metastores:backend_metastores list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  federation_id:string prop ->
  version:string prop ->
  backend_metastores:backend_metastores list ->
  string ->
  t Tf_core.resource
