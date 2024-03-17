(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_certificate_signing_request__metadata
type kubernetes_certificate_signing_request__spec
type kubernetes_certificate_signing_request__timeouts
type kubernetes_certificate_signing_request

type t = private {
  auto_approve : bool prop;
  certificate : string prop;
  id : string prop;
}

val kubernetes_certificate_signing_request :
  ?auto_approve:bool prop ->
  ?id:string prop ->
  ?timeouts:kubernetes_certificate_signing_request__timeouts ->
  metadata:kubernetes_certificate_signing_request__metadata list ->
  spec:kubernetes_certificate_signing_request__spec list ->
  string ->
  t
