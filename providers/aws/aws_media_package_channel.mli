(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hls_ingest__ingest_endpoints = {
  password : string prop;  (** password *)
  url : string prop;  (** url *)
  username : string prop;  (** username *)
}

type hls_ingest = {
  ingest_endpoints : hls_ingest__ingest_endpoints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ingest_endpoints *)
}

type aws_media_package_channel

val aws_media_package_channel :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  channel_id:string prop ->
  unit ->
  aws_media_package_channel

val yojson_of_aws_media_package_channel :
  aws_media_package_channel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  channel_id : string prop;
  description : string prop;
  hls_ingest : hls_ingest list prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  channel_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  channel_id:string prop ->
  string ->
  t Tf_core.resource
