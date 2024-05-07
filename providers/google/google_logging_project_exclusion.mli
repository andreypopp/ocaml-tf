(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_logging_project_exclusion

val google_logging_project_exclusion :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  filter:string prop ->
  name:string prop ->
  unit ->
  google_logging_project_exclusion

val yojson_of_google_logging_project_exclusion :
  google_logging_project_exclusion -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  filter:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  filter:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
