(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_binary_authorization_attestor__attestation_authority_note__public_keys__pkix_public_key = {
  public_key_pem : string option; [@option]
      (** A PEM-encoded public key, as described in
'https://tools.ietf.org/html/rfc7468#section-13' *)
  signature_algorithm : string option; [@option]
      (** The signature algorithm used to verify a message against
a signature using this key. These signature algorithm must
match the structure and any object identifiers encoded in
publicKeyPem (i.e. this algorithm must match that of the
public key). *)
}
[@@deriving yojson_of]
(** A raw PKIX SubjectPublicKeyInfo format public key.

NOTE: id may be explicitly provided by the caller when using this
type of public key, but it MUST be a valid RFC3986 URI. If id is left
blank, a default one will be computed based on the digest of the DER
encoding of the public key. *)

type google_binary_authorization_attestor__attestation_authority_note__public_keys = {
  ascii_armored_pgp_public_key : string option; [@option]
      (** ASCII-armored representation of a PGP public key, as the
entire output by the command
'gpg --export --armor foo@example.com' (either LF or CRLF
line endings). When using this field, id should be left
blank. The BinAuthz API handlers will calculate the ID
and fill it in automatically. BinAuthz computes this ID
as the OpenPGP RFC4880 V4 fingerprint, represented as
upper-case hex. If id is provided by the caller, it will
be overwritten by the API-calculated ID. *)
  comment : string option; [@option]
      (** A descriptive comment. This field may be updated. *)
  id : string option; [@option]
      (** The ID of this public key. Signatures verified by BinAuthz
must include the ID of the public key that can be used to
verify them, and that ID must match the contents of this
field exactly. Additional restrictions on this field can
be imposed based on which public key type is encapsulated.
See the documentation on publicKey cases below for details. *)
  pkix_public_key :
    google_binary_authorization_attestor__attestation_authority_note__public_keys__pkix_public_key
    list;
}
[@@deriving yojson_of]
(** Public keys that verify attestations signed by this attestor. This
field may be updated.
If this field is non-empty, one of the specified public keys must
verify that an attestation was signed by this attestor for the
image specified in the admission request.
If this field is empty, this attestor always returns that no valid
attestations exist. *)

type google_binary_authorization_attestor__attestation_authority_note = {
  delegation_service_account_email : string;
      (** This field will contain the service account email address that
this Attestor will use as the principal when querying Container
Analysis. Attestor administrators must grant this service account
the IAM role needed to read attestations from the noteReference in
Container Analysis (containeranalysis.notes.occurrences.viewer).
This email address is fixed for the lifetime of the Attestor, but
callers should not make any other assumptions about the service
account email; future versions may use an email based on a
different naming pattern. *)
  note_reference : string;
      (** The resource name of a ATTESTATION_AUTHORITY Note, created by the
user. If the Note is in a different project from the Attestor, it
should be specified in the format 'projects/*/notes/*' (or the legacy
'providers/*/notes/*'). This field may not be updated.
An attestation by this attestor is stored as a Container Analysis
ATTESTATION_AUTHORITY Occurrence that names a container image
and that links to this Note. *)
  public_keys :
    google_binary_authorization_attestor__attestation_authority_note__public_keys
    list;
}
[@@deriving yojson_of]
(** A Container Analysis ATTESTATION_AUTHORITY Note, created by the user. *)

type google_binary_authorization_attestor__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_binary_authorization_attestor__timeouts *)

type google_binary_authorization_attestor = {
  description : string option; [@option]
      (** A descriptive comment. This field may be updated. The field may be
displayed in chooser dialogs. *)
  name : string;  (** The resource name. *)
  attestation_authority_note :
    google_binary_authorization_attestor__attestation_authority_note
    list;
  timeouts : google_binary_authorization_attestor__timeouts option;
}
[@@deriving yojson_of]
(** google_binary_authorization_attestor *)

let google_binary_authorization_attestor ?description ?timeouts ~name
    ~attestation_authority_note __resource_id =
  let __resource_type = "google_binary_authorization_attestor" in
  let __resource =
    { description; name; attestation_authority_note; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_binary_authorization_attestor __resource);
  ()
