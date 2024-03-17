(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_certificate_signing_request_v1__metadata
type kubernetes_certificate_signing_request_v1__spec
type kubernetes_certificate_signing_request_v1__timeouts
type kubernetes_certificate_signing_request_v1

val kubernetes_certificate_signing_request_v1 :
  ?auto_approve:bool prop ->
  ?id:string prop ->
  ?timeouts:kubernetes_certificate_signing_request_v1__timeouts ->
  metadata:kubernetes_certificate_signing_request_v1__metadata list ->
  spec:kubernetes_certificate_signing_request_v1__spec list ->
  string ->
  unit
