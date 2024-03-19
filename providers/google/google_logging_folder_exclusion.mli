(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type google_logging_folder_exclusion

val google_logging_folder_exclusion :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  filter:string prop ->
  folder:string prop ->
  name:string prop ->
  unit ->
  google_logging_folder_exclusion

val yojson_of_google_logging_folder_exclusion :
  google_logging_folder_exclusion -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  folder : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  filter:string prop ->
  folder:string prop ->
  name:string prop ->
  string ->
  t
