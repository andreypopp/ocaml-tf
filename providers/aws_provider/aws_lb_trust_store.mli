(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lb_trust_store__timeouts
type aws_lb_trust_store

val aws_lb_trust_store :
  ?ca_certificates_bundle_s3_object_version:string ->
  ?id:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_lb_trust_store__timeouts ->
  ca_certificates_bundle_s3_bucket:string ->
  ca_certificates_bundle_s3_key:string ->
  string ->
  unit
