(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  expression:string prop ->
  title:string prop ->
  unit ->
  condition

type google_dataplex_entry_type_iam_member

val google_dataplex_entry_type_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  entry_type_id:string prop ->
  member:string prop ->
  role:string prop ->
  unit ->
  google_dataplex_entry_type_iam_member

val yojson_of_google_dataplex_entry_type_iam_member :
  google_dataplex_entry_type_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  entry_type_id : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  entry_type_id:string prop ->
  member:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  entry_type_id:string prop ->
  member:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
