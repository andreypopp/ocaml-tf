(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_certificate_signing_request_v1__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the certificate signing request that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the certificate signing request. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the certificate signing request, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string;
      (** An opaque value that represents the internal version of this certificate signing request that can be used by clients to determine when certificate signing request has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this certificate signing request. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard certificate signing request's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_certificate_signing_request_v1__spec = {
  request : string;
      (** request contains an x509 certificate signing request encoded in a CERTIFICATE REQUEST PEM block. When serialized as JSON or YAML, the data is additionally base64-encoded. *)
  signer_name : string;
      (** signerName indicates the requested signer, and is a qualified name.

List/watch requests for CertificateSigningRequests can filter on this field using a spec.signerName=NAME fieldSelector.

Well-known Kubernetes signers are:
 1. kubernetes.io/kube-apiserver-client: issues client certificates that can be used to authenticate to kube-apiserver.
  Requests for this signer are never auto-approved by kube-controller-manager, can be issued by the csrsigning controller in kube-controller-manager.
 2. kubernetes.io/kube-apiserver-client-kubelet: issues client certificates that kubelets use to authenticate to kube-apiserver.
  Requests for this signer can be auto-approved by the csrapproving controller in kube-controller-manager, and can be issued by the csrsigning controller in kube-controller-manager.
 3. kubernetes.io/kubelet-serving issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.
  Requests for this signer are never auto-approved by kube-controller-manager, and can be issued by the csrsigning controller in kube-controller-manager.

More details are available at https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers

Custom signerNames can also be specified. The signer defines:
 1. Trust distribution: how trust (CA bundles) are distributed.
 2. Permitted subjects: and behavior when a disallowed subject is requested.
 3. Required, permitted, or forbidden x509 extensions in the request (including whether subjectAltNames are allowed, which types, restrictions on allowed values) and behavior when a disallowed extension is requested.
 4. Required, permitted, or forbidden key usages / extended key usages.
 5. Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.
 6. Whether or not requests for CA certificates are allowed. *)
  usages : string list option; [@option]
      (** usages specifies a set of key usages requested in the issued certificate.

Requests for TLS client certificates typically request: digital signature, key encipherment, client auth.

Requests for TLS serving certificates typically request: key encipherment, digital signature, server auth.

Valid values are:
 signing, digital signature, content commitment,
 key encipherment, key agreement, data encipherment,
 cert sign, crl sign, encipher only, decipher only, any,
 server auth, client auth,
 code signing, email protection, s/mime,
 ipsec end system, ipsec tunnel, ipsec user,
 timestamping, ocsp signing, microsoft sgc, netscape sgc *)
}
[@@deriving yojson_of]
(** CertificateSigningRequest objects provide a mechanism to obtain x509 certificates by submitting a certificate signing request, and having it asynchronously approved and issued.

Kubelets use this API to obtain:
 1. client certificates to authenticate to kube-apiserver (with the kubernetes.io/kube-apiserver-client-kubelet signerName).
 2. serving certificates for TLS endpoints kube-apiserver can connect to securely (with the kubernetes.io/kubelet-serving signerName).

This API can be used to request client certificates to authenticate to kube-apiserver (with the kubernetes.io/kube-apiserver-client signerName), or to obtain certificates from custom non-Kubernetes signers. *)

type kubernetes_certificate_signing_request_v1__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** kubernetes_certificate_signing_request_v1__timeouts *)

type kubernetes_certificate_signing_request_v1 = {
  auto_approve : bool option; [@option]
      (** Automatically approve the CertificateSigningRequest *)
  id : string option; [@option]  (** id *)
  metadata :
    kubernetes_certificate_signing_request_v1__metadata list;
  spec : kubernetes_certificate_signing_request_v1__spec list;
  timeouts :
    kubernetes_certificate_signing_request_v1__timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_certificate_signing_request_v1 *)

let kubernetes_certificate_signing_request_v1 ?auto_approve ?id
    ?timeouts ~metadata ~spec __resource_id =
  let __resource_type =
    "kubernetes_certificate_signing_request_v1"
  in
  let __resource = { auto_approve; id; metadata; spec; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_certificate_signing_request_v1 __resource);
  ()
