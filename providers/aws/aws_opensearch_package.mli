(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type package_source

val package_source :
  s3_bucket_name:string prop ->
  s3_key:string prop ->
  unit ->
  package_source

type aws_opensearch_package

val aws_opensearch_package :
  ?id:string prop ->
  ?package_description:string prop ->
  package_name:string prop ->
  package_type:string prop ->
  package_source:package_source list ->
  unit ->
  aws_opensearch_package

val yojson_of_aws_opensearch_package : aws_opensearch_package -> json

(** RESOURCE REGISTRATION *)

type t = private {
  available_package_version : string prop;
  id : string prop;
  package_description : string prop;
  package_id : string prop;
  package_name : string prop;
  package_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?package_description:string prop ->
  package_name:string prop ->
  package_type:string prop ->
  package_source:package_source list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?package_description:string prop ->
  package_name:string prop ->
  package_type:string prop ->
  package_source:package_source list ->
  string ->
  t Tf_core.resource
