(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_certificate_manager_certificate__managed__authorization_attempt_info = {
  details : string;  (** details *)
  domain : string;  (** domain *)
  failure_reason : string;  (** failure_reason *)
  state : string;  (** state *)
}
[@@deriving yojson_of]

type google_certificate_manager_certificate__managed__provisioning_issue = {
  details : string;  (** details *)
  reason : string;  (** reason *)
}
[@@deriving yojson_of]

type google_certificate_manager_certificate__managed = {
  authorization_attempt_info :
    google_certificate_manager_certificate__managed__authorization_attempt_info
    list;
      (** Detailed state of the latest authorization attempt for each domain
specified for this Managed Certificate. *)
  dns_authorizations : string list option; [@option]
      (** Authorizations that will be used for performing domain authorization. Either issuanceConfig or dnsAuthorizations should be specificed, but not both. *)
  domains : string list option; [@option]
      (** The domains for which a managed SSL certificate will be generated.
Wildcard domains are only supported with DNS challenge resolution *)
  issuance_config : string option; [@option]
      (** The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format projects/*/locations/*/certificateIssuanceConfigs/*.
If this field is not set, the certificates will instead be publicly signed as documented at https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.
Either issuanceConfig or dnsAuthorizations should be specificed, but not both. *)
  provisioning_issue :
    google_certificate_manager_certificate__managed__provisioning_issue
    list;
      (** Information about issues with provisioning this Managed Certificate. *)
  state : string;  (** A state of this Managed Certificate. *)
}
[@@deriving yojson_of]
(** Configuration and state of a Managed Certificate.
Certificate Manager provisions and renews Managed Certificates
automatically, for as long as it's authorized to do so. *)

type google_certificate_manager_certificate__self_managed = {
  certificate_pem : string option; [@option]
      (** The certificate chain in PEM-encoded form.

Leaf certificate comes first, followed by intermediate ones if any. *)
  pem_certificate : string option; [@option]
      (** The certificate chain in PEM-encoded form.

Leaf certificate comes first, followed by intermediate ones if any. *)
  pem_private_key : string option; [@option]
      (** The private key of the leaf certificate in PEM-encoded form. *)
  private_key_pem : string option; [@option]
      (** The private key of the leaf certificate in PEM-encoded form. *)
}
[@@deriving yojson_of]
(** Certificate data for a SelfManaged Certificate.
SelfManaged Certificates are uploaded by the user. Updating such
certificates before they expire remains the user's responsibility. *)

type google_certificate_manager_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_certificate_manager_certificate__timeouts *)

type google_certificate_manager_certificate = {
  description : string option; [@option]
      (** A human-readable description of the resource. *)
  labels : (string * string) list option; [@option]
      (** Set of label tags associated with the Certificate resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string option; [@option]
      (** The Certificate Manager location. If not specified, global is used. *)
  name : string;
      (** A user-defined name of the certificate. Certificate names must be unique
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit. *)
  scope : string option; [@option]
      (** The scope of the certificate.

DEFAULT: Certificates with default scope are served from core Google data centers.
If unsure, choose this option.

EDGE_CACHE: Certificates with scope EDGE_CACHE are special-purposed certificates, served from Edge Points of Presence.
See https://cloud.google.com/vpc/docs/edge-locations.

ALL_REGIONS: Certificates with ALL_REGIONS scope are served from all GCP regions (You can only use ALL_REGIONS with global certs).
See https://cloud.google.com/compute/docs/regions-zones *)
  managed : google_certificate_manager_certificate__managed list;
  self_managed :
    google_certificate_manager_certificate__self_managed list;
  timeouts : google_certificate_manager_certificate__timeouts option;
}
[@@deriving yojson_of]
(** google_certificate_manager_certificate *)

let google_certificate_manager_certificate ?description ?labels
    ?location ?scope ?timeouts ~name ~managed ~self_managed
    __resource_id =
  let __resource_type = "google_certificate_manager_certificate" in
  let __resource =
    {
      description;
      labels;
      location;
      name;
      scope;
      managed;
      self_managed;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_certificate_manager_certificate __resource);
  ()
