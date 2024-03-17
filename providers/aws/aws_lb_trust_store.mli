(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lb_trust_store__timeouts
type aws_lb_trust_store

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

val aws_lb_trust_store :
  ?ca_certificates_bundle_s3_object_version:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_lb_trust_store__timeouts ->
  ca_certificates_bundle_s3_bucket:string prop ->
  ca_certificates_bundle_s3_key:string prop ->
  string ->
  t
