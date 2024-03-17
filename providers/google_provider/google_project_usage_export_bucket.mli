(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project_usage_export_bucket__timeouts
type google_project_usage_export_bucket

type t = private {
  bucket_name : string prop;
  id : string prop;
  prefix : string prop;
  project : string prop;
}

val google_project_usage_export_bucket :
  ?id:string prop ->
  ?prefix:string prop ->
  ?project:string prop ->
  ?timeouts:google_project_usage_export_bucket__timeouts ->
  bucket_name:string prop ->
  string ->
  t
