(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_logging_folder_exclusion

type t = private {
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  folder : string prop;
  id : string prop;
  name : string prop;
}

val google_logging_folder_exclusion :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  filter:string prop ->
  folder:string prop ->
  name:string prop ->
  string ->
  t
