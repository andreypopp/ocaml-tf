(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the certificate signing request that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the certificate signing request. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the certificate signing request, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Standard certificate signing request's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type spec = {
  request : string prop;
      (** request contains an x509 certificate signing request encoded in a CERTIFICATE REQUEST PEM block. When serialized as JSON or YAML, the data is additionally base64-encoded. *)
  signer_name : string prop;
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
  usages : string prop list option; [@option]
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

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type kubernetes_certificate_signing_request_v1 = {
  auto_approve : bool prop option; [@option]
      (** Automatically approve the CertificateSigningRequest *)
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
  spec : spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_certificate_signing_request_v1 *)

let metadata ?annotations ?generate_name ?labels ?name () : metadata
    =
  { annotations; generate_name; labels; name }

let spec ?usages ~request ~signer_name () : spec =
  { request; signer_name; usages }

let timeouts ?create () : timeouts = { create }

let kubernetes_certificate_signing_request_v1 ?auto_approve ?id
    ?timeouts ~metadata ~spec () :
    kubernetes_certificate_signing_request_v1 =
  { auto_approve; id; metadata; spec; timeouts }

type t = {
  auto_approve : bool prop;
  certificate : string prop;
  id : string prop;
}

let make ?auto_approve ?id ?timeouts ~metadata ~spec __id =
  let __type = "kubernetes_certificate_signing_request_v1" in
  let __attrs =
    ({
       auto_approve = Prop.computed __type __id "auto_approve";
       certificate = Prop.computed __type __id "certificate";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_certificate_signing_request_v1
        (kubernetes_certificate_signing_request_v1 ?auto_approve ?id
           ?timeouts ~metadata ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_approve ?id ?timeouts ~metadata ~spec
    __id =
  let (r : _ Tf_core.resource) =
    make ?auto_approve ?id ?timeouts ~metadata ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
