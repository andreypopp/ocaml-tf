(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_media_package_channel__hls_ingest__ingest_endpoints = {
  password : string;  (** password *)
  url : string;  (** url *)
  username : string;  (** username *)
}

type aws_media_package_channel__hls_ingest = {
  ingest_endpoints :
    aws_media_package_channel__hls_ingest__ingest_endpoints list;
      (** ingest_endpoints *)
}

type aws_media_package_channel

val aws_media_package_channel :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  channel_id:string ->
  string ->
  unit
