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

type google_dataplex_aspect_type

val google_dataplex_aspect_type :
  ?aspect_type_id:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?metadata_template:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  unit ->
  google_dataplex_aspect_type

val yojson_of_google_dataplex_aspect_type :
  google_dataplex_aspect_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  aspect_type_id : string prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  metadata_template : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  transfer_status : string prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?aspect_type_id:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?metadata_template:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?aspect_type_id:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?metadata_template:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
