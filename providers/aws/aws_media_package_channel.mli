(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hls_ingest__ingest_endpoints = {
  password : string prop;  (** password *)
  url : string prop;  (** url *)
  username : string prop;  (** username *)
}

[@@@deriving.end]

type hls_ingest = {
  ingest_endpoints : hls_ingest__ingest_endpoints list;
      (** ingest_endpoints *)
}

[@@@deriving.end]

type aws_media_package_channel

val aws_media_package_channel :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  channel_id:string prop ->
  unit ->
  aws_media_package_channel

val yojson_of_aws_media_package_channel :
  aws_media_package_channel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  channel_id : string prop;
  description : string prop;
  hls_ingest : hls_ingest list prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  channel_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  channel_id:string prop ->
  string ->
  t Tf_core.resource
