(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_certificate_signing_request__metadata
type kubernetes_certificate_signing_request__spec
type kubernetes_certificate_signing_request__timeouts
type kubernetes_certificate_signing_request

val kubernetes_certificate_signing_request :
  ?auto_approve:bool ->
  ?id:string ->
  ?timeouts:kubernetes_certificate_signing_request__timeouts ->
  metadata:kubernetes_certificate_signing_request__metadata list ->
  spec:kubernetes_certificate_signing_request__spec list ->
  string ->
  unit
