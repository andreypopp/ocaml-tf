(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_lb_trust_store

val aws_lb_trust_store :
  ?ca_certificates_bundle_s3_object_version:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  ca_certificates_bundle_s3_bucket:string prop ->
  ca_certificates_bundle_s3_key:string prop ->
  unit ->
  aws_lb_trust_store

val yojson_of_aws_lb_trust_store : aws_lb_trust_store -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  arn_suffix : string prop;
  ca_certificates_bundle_s3_bucket : string prop;
  ca_certificates_bundle_s3_key : string prop;
  ca_certificates_bundle_s3_object_version : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?ca_certificates_bundle_s3_object_version:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  ca_certificates_bundle_s3_bucket:string prop ->
  ca_certificates_bundle_s3_key:string prop ->
  string ->
  t

val make :
  ?ca_certificates_bundle_s3_object_version:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  ca_certificates_bundle_s3_bucket:string prop ->
  ca_certificates_bundle_s3_key:string prop ->
  string ->
  t Tf_core.resource
