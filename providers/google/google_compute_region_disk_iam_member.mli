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

type google_compute_region_disk_iam_member

val google_compute_region_disk_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?condition:condition list ->
  member:string prop ->
  name:string prop ->
  role:string prop ->
  unit ->
  google_compute_region_disk_iam_member

val yojson_of_google_compute_region_disk_iam_member :
  google_compute_region_disk_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  etag : string prop;
  id : string prop;
  member : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?condition:condition list ->
  member:string prop ->
  name:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?condition:condition list ->
  member:string prop ->
  name:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
