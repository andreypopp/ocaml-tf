(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type location__s3

val location__s3 :
  ?object_version:string prop ->
  bucket_arn:string prop ->
  file_key:string prop ->
  unit ->
  location__s3

type location

val location : s3:location__s3 list -> unit -> location

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_mskconnect_custom_plugin

val aws_mskconnect_custom_plugin :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  content_type:string prop ->
  name:string prop ->
  location:location list ->
  unit ->
  aws_mskconnect_custom_plugin

val yojson_of_aws_mskconnect_custom_plugin :
  aws_mskconnect_custom_plugin -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  content_type : string prop;
  description : string prop;
  id : string prop;
  latest_revision : float prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  content_type:string prop ->
  name:string prop ->
  location:location list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  content_type:string prop ->
  name:string prop ->
  location:location list ->
  string ->
  t Tf_core.resource
