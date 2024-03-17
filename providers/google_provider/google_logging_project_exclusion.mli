(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_project_exclusion

type t = private {
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

val google_logging_project_exclusion :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  filter:string prop ->
  name:string prop ->
  string ->
  t
