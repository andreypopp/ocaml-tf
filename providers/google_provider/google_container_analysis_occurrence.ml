(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_analysis_occurrence__attestation__signatures = {
  public_key_id : string prop;
      (** The identifier for the public key that verifies this
signature. MUST be an RFC3986 conformant
URI. * When possible, the key id should be an
immutable reference, such as a cryptographic digest.
Examples of valid values:

* OpenPGP V4 public key fingerprint. See https://www.iana.org/assignments/uri-schemes/prov/openpgp4fpr
  for more details on this scheme.
    * 'openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA'
* RFC6920 digest-named SubjectPublicKeyInfo (digest of the DER serialization):
    * ni:///sha-256;cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU *)
  signature : string prop option; [@option]
      (** The content of the signature, an opaque bytestring.
The payload that this signature verifies MUST be
unambiguously provided with the Signature during
verification. A wrapper message might provide the
payload explicitly. Alternatively, a message might
have a canonical serialization that can always be
unambiguously computed to derive the payload. *)
}
[@@deriving yojson_of]
(** One or more signatures over serializedPayload.
Verifier implementations should consider this attestation
message verified if at least one signature verifies
serializedPayload. See Signature in common.proto for more
details on signature structure and verification. *)

type google_container_analysis_occurrence__attestation = {
  serialized_payload : string prop;
      (** The serialized payload that is verified by one or
more signatures. A base64-encoded string. *)
  signatures :
    google_container_analysis_occurrence__attestation__signatures
    list;
}
[@@deriving yojson_of]
(** Occurrence that represents a single attestation. The authenticity
of an attestation can be verified using the attached signature.
If the verifier trusts the public key of the signer, then verifying
the signature is sufficient to establish trust. In this circumstance,
the authority to which this attestation is attached is primarily
useful for lookup (how to find this attestation if you already
know the authority and artifact to be verified) and intent (for
which authority this attestation was intended to sign. *)

type google_container_analysis_occurrence__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_container_analysis_occurrence__timeouts *)

type google_container_analysis_occurrence = {
  id : string prop option; [@option]  (** id *)
  note_name : string prop;
      (** The analysis note associated with this occurrence, in the form of
projects/[PROJECT]/notes/[NOTE_ID]. This field can be used as a
filter in list requests. *)
  project : string prop option; [@option]  (** project *)
  remediation : string prop option; [@option]
      (** A description of actions that can be taken to remedy the note. *)
  resource_uri : string prop;
      (** Required. Immutable. A URI that represents the resource for which
the occurrence applies. For example,
https://gcr.io/project/image@sha256:123abc for a Docker image. *)
  attestation :
    google_container_analysis_occurrence__attestation list;
  timeouts : google_container_analysis_occurrence__timeouts option;
}
[@@deriving yojson_of]
(** google_container_analysis_occurrence *)

type t = {
  create_time : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  note_name : string prop;
  project : string prop;
  remediation : string prop;
  resource_uri : string prop;
  update_time : string prop;
}

let google_container_analysis_occurrence ?id ?project ?remediation
    ?timeouts ~note_name ~resource_uri ~attestation __resource_id =
  let __resource_type = "google_container_analysis_occurrence" in
  let __resource =
    ({
       id;
       note_name;
       project;
       remediation;
       resource_uri;
       attestation;
       timeouts;
     }
      : google_container_analysis_occurrence)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_analysis_occurrence __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       name = Prop.computed __resource_type __resource_id "name";
       note_name =
         Prop.computed __resource_type __resource_id "note_name";
       project =
         Prop.computed __resource_type __resource_id "project";
       remediation =
         Prop.computed __resource_type __resource_id "remediation";
       resource_uri =
         Prop.computed __resource_type __resource_id "resource_uri";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
