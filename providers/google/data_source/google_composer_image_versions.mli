(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type image_versions = {
  image_version_id : string prop;  (** image_version_id *)
  supported_python_versions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** supported_python_versions *)
}

type google_composer_image_versions

val google_composer_image_versions :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  unit ->
  google_composer_image_versions

val yojson_of_google_composer_image_versions :
  google_composer_image_versions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  image_versions : image_versions list prop;
  project : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  string ->
  t Tf_core.resource
