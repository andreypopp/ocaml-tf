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

type google_scc_source_iam_binding

val google_scc_source_iam_binding :
  ?id:string prop ->
  ?condition:condition list ->
  members:string prop list ->
  organization:string prop ->
  role:string prop ->
  source:string prop ->
  unit ->
  google_scc_source_iam_binding

val yojson_of_google_scc_source_iam_binding :
  google_scc_source_iam_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  organization : string prop;
  role : string prop;
  source : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?condition:condition list ->
  members:string prop list ->
  organization:string prop ->
  role:string prop ->
  source:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?condition:condition list ->
  members:string prop list ->
  organization:string prop ->
  role:string prop ->
  source:string prop ->
  string ->
  t Tf_core.resource
