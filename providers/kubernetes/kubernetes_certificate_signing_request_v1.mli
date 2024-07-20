(** Use this resource to generate TLS certificates using Kubernetes. This is a *logical resource*, so it contributes only to the current Terraform state and does not persist any external managed resources. This resource enables automation of [X.509](https://www.itu.int/rec/T-REC-X.509) credential provisioning (including TLS/SSL certificates). It does this by creating a CertificateSigningRequest using the Kubernetes API, which generates a certificate from the Certificate Authority (CA) configured in the Kubernetes cluster. The CSR can be approved automatically by Terraform, or it can be approved by a custom controller running in Kubernetes. See [Kubernetes reference](https://kubernetes.io/docs/reference/access-authn-authz/certificate-signing-requests/) for all available options pertaining to CertificateSigningRequests. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  unit ->
  metadata

type spec

val spec :
  ?usages:string prop list ->
  request:string prop ->
  signer_name:string prop ->
  unit ->
  spec

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type kubernetes_certificate_signing_request_v1

val kubernetes_certificate_signing_request_v1 :
  ?auto_approve:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_certificate_signing_request_v1

val yojson_of_kubernetes_certificate_signing_request_v1 :
  kubernetes_certificate_signing_request_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_approve : bool prop;
  certificate : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_approve:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t

val make :
  ?auto_approve:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t Tf_core.resource
