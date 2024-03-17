(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_certificate_manager_certificate__managed__authorization_attempt_info = {
  details : string prop;  (** details *)
  domain : string prop;  (** domain *)
  failure_reason : string prop;  (** failure_reason *)
  state : string prop;  (** state *)
}
[@@deriving yojson_of]

type google_certificate_manager_certificate__managed__provisioning_issue = {
  details : string prop;  (** details *)
  reason : string prop;  (** reason *)
}
[@@deriving yojson_of]

type google_certificate_manager_certificate__managed = {
  authorization_attempt_info :
    google_certificate_manager_certificate__managed__authorization_attempt_info
    list;
      (** Detailed state of the latest authorization attempt for each domain
specified for this Managed Certificate. *)
  dns_authorizations : string prop list option; [@option]
      (** Authorizations that will be used for performing domain authorization. Either issuanceConfig or dnsAuthorizations should be specificed, but not both. *)
  domains : string prop list option; [@option]
      (** The domains for which a managed SSL certificate will be generated.
Wildcard domains are only supported with DNS challenge resolution *)
  issuance_config : string prop option; [@option]
      (** The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format projects/*/locations/*/certificateIssuanceConfigs/*.
If this field is not set, the certificates will instead be publicly signed as documented at https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.
Either issuanceConfig or dnsAuthorizations should be specificed, but not both. *)
  provisioning_issue :
    google_certificate_manager_certificate__managed__provisioning_issue
    list;
      (** Information about issues with provisioning this Managed Certificate. *)
  state : string prop;  (** A state of this Managed Certificate. *)
}
[@@deriving yojson_of]
(** Configuration and state of a Managed Certificate.
Certificate Manager provisions and renews Managed Certificates
automatically, for as long as it's authorized to do so. *)

type google_certificate_manager_certificate__self_managed = {
  certificate_pem : string prop option; [@option]
      (** The certificate chain in PEM-encoded form.

Leaf certificate comes first, followed by intermediate ones if any. *)
  pem_certificate : string prop option; [@option]
      (** The certificate chain in PEM-encoded form.

Leaf certificate comes first, followed by intermediate ones if any. *)
  pem_private_key : string prop option; [@option]
      (** The private key of the leaf certificate in PEM-encoded form. *)
  private_key_pem : string prop option; [@option]
      (** The private key of the leaf certificate in PEM-encoded form. *)
}
[@@deriving yojson_of]
(** Certificate data for a SelfManaged Certificate.
SelfManaged Certificates are uploaded by the user. Updating such
certificates before they expire remains the user's responsibility. *)

type google_certificate_manager_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_certificate_manager_certificate__timeouts *)

type google_certificate_manager_certificate = {
  description : string prop option; [@option]
      (** A human-readable description of the resource. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Set of label tags associated with the Certificate resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop option; [@option]
      (** The Certificate Manager location. If not specified, global is used. *)
  name : string prop;
      (** A user-defined name of the certificate. Certificate names must be unique
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit. *)
  project : string prop option; [@option]  (** project *)
  scope : string prop option; [@option]
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

type t = {
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  scope : string prop;
  terraform_labels : (string * string) list prop;
}

let google_certificate_manager_certificate ?description ?id ?labels
    ?location ?project ?scope ?timeouts ~name ~managed ~self_managed
    __resource_id =
  let __resource_type = "google_certificate_manager_certificate" in
  let __resource =
    ({
       description;
       id;
       labels;
       location;
       name;
       project;
       scope;
       managed;
       self_managed;
       timeouts;
     }
      : google_certificate_manager_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_certificate_manager_certificate __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       scope = Prop.computed __resource_type __resource_id "scope";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes
