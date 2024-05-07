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

type google_privateca_certificate_template_iam_member

val google_privateca_certificate_template_iam_member :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  certificate_template:string prop ->
  member:string prop ->
  role:string prop ->
  unit ->
  google_privateca_certificate_template_iam_member

val yojson_of_google_privateca_certificate_template_iam_member :
  google_privateca_certificate_template_iam_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_template : string prop;
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
  certificate_template:string prop ->
  member:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?condition:condition list ->
  certificate_template:string prop ->
  member:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
