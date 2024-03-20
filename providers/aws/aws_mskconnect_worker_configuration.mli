(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_mskconnect_worker_configuration

val aws_mskconnect_worker_configuration :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  properties_file_content:string prop ->
  unit ->
  aws_mskconnect_worker_configuration

val yojson_of_aws_mskconnect_worker_configuration :
  aws_mskconnect_worker_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  latest_revision : float prop;
  name : string prop;
  properties_file_content : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  properties_file_content:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  properties_file_content:string prop ->
  string ->
  t Tf_core.resource
