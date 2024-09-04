(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type required_aspects

val required_aspects : ?type_:string prop -> unit -> required_aspects

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dataplex_entry_type

val google_dataplex_entry_type :
  ?description:string prop ->
  ?display_name:string prop ->
  ?entry_type_id:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?platform:string prop ->
  ?project:string prop ->
  ?system:string prop ->
  ?type_aliases:string prop list ->
  ?required_aspects:required_aspects list ->
  ?timeouts:timeouts ->
  unit ->
  google_dataplex_entry_type

val yojson_of_google_dataplex_entry_type :
  google_dataplex_entry_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  entry_type_id : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  platform : string prop;
  project : string prop;
  system : string prop;
  terraform_labels : string Tf_core.assoc prop;
  type_aliases : string list prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?entry_type_id:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?platform:string prop ->
  ?project:string prop ->
  ?system:string prop ->
  ?type_aliases:string prop list ->
  ?required_aspects:required_aspects list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?entry_type_id:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?platform:string prop ->
  ?project:string prop ->
  ?system:string prop ->
  ?type_aliases:string prop list ->
  ?required_aspects:required_aspects list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
