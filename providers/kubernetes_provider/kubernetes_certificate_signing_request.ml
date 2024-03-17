(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_certificate_signing_request__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the certificate signing request that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float prop;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the certificate signing request. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the certificate signing request, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string prop;
      (** An opaque value that represents the internal version of this certificate signing request that can be used by clients to determine when certificate signing request has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string prop;
      (** The unique in time and space value for this certificate signing request. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard certificate signing request's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_certificate_signing_request__spec = {
  request : string prop;  (** Base64-encoded PKCS#10 CSR data *)
  signer_name : string prop option; [@option]
      (** Requested signer for the request. It is a qualified name in the form: `scope-hostname.io/name`.If empty, it will be defaulted: 1. If it's a kubelet client certificate, it is assigned `kubernetes.io/kube-apiserver-client-kubelet`.2. If it's a kubelet serving certificate, it is assigned `kubernetes.io/kubelet-serving`.3. Otherwise, it is assigned `kubernetes.io/legacy-unknown`. Distribution of trust for signers happens out of band.You can select on this field using `spec.signerName`. *)
  usages : string prop list option; [@option]
      (** allowedUsages specifies a set of usage contexts the key will be valid for. See:
	https://tools.ietf.org/html/rfc5280#section-4.2.1.3
	https://tools.ietf.org/html/rfc5280#section-4.2.1.12

Valid values are:
 signing,
 digital signature,
 content commitment,
 key encipherment,
 key agreement,
 data encipherment,
 cert sign,
 crl sign,
 encipher only,
 decipher only,
 any,
 server auth,
 client auth,
 code signing,
 email protection,
 s/mime,
 ipsec end system,
 ipsec tunnel,
 ipsec user,
 timestamping,
 ocsp signing,
 microsoft sgc,
 netscape sgc *)
}
[@@deriving yojson_of]
(** Describes a certificate signing request *)

type kubernetes_certificate_signing_request__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** kubernetes_certificate_signing_request__timeouts *)

type kubernetes_certificate_signing_request = {
  auto_approve : bool prop option; [@option]
      (** Automatically approve the CertificateSigningRequest *)
  id : string prop option; [@option]  (** id *)
  metadata : kubernetes_certificate_signing_request__metadata list;
  spec : kubernetes_certificate_signing_request__spec list;
  timeouts : kubernetes_certificate_signing_request__timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_certificate_signing_request *)

type t = {
  auto_approve : bool prop;
  certificate : string prop;
  id : string prop;
}

let kubernetes_certificate_signing_request ?auto_approve ?id
    ?timeouts ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_certificate_signing_request" in
  let __resource =
    ({ auto_approve; id; metadata; spec; timeouts }
      : kubernetes_certificate_signing_request)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_certificate_signing_request __resource);
  let __resource_attributes =
    ({
       auto_approve =
         Prop.computed __resource_type __resource_id "auto_approve";
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
