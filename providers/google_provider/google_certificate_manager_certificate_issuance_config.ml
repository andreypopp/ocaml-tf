(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_certificate_manager_certificate_issuance_config__certificate_authority_config__certificate_authority_service_config = {
  ca_pool : string;
      (** A CA pool resource used to issue a certificate.
The CA pool string has a relative resource path following the form
projects/{project}/locations/{location}/caPools/{caPool}. *)
}
[@@deriving yojson_of]
(** Defines a CertificateAuthorityServiceConfig. *)

type google_certificate_manager_certificate_issuance_config__certificate_authority_config = {
  certificate_authority_service_config :
    google_certificate_manager_certificate_issuance_config__certificate_authority_config__certificate_authority_service_config
    list;
}
[@@deriving yojson_of]
(** The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc. *)

type google_certificate_manager_certificate_issuance_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_certificate_manager_certificate_issuance_config__timeouts *)

type google_certificate_manager_certificate_issuance_config = {
  description : string option; [@option]
      (** One or more paragraphs of text description of a CertificateIssuanceConfig. *)
  id : string option; [@option]  (** id *)
  key_algorithm : string;
      (** Key algorithm to use when generating the private key. Possible values: [RSA_2048, ECDSA_P256] *)
  labels : (string * string) list option; [@option]
      (** 'Set of label tags associated with the CertificateIssuanceConfig resource.
 An object containing a list of key: value pairs. Example: { name: wrench, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  lifetime : string;
      (** Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with 's'.
Example: 1814400s. Valid values are from 21 days (1814400s) to 30 days (2592000s) *)
  location : string option; [@option]
      (** The Certificate Manager location. If not specified, global is used. *)
  name : string;
      (** A user-defined name of the certificate issuance config.
CertificateIssuanceConfig names must be unique globally. *)
  project : string option; [@option]  (** project *)
  rotation_window_percentage : float;
      (** It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.
Must be a number between 1-99, inclusive.
You must set the rotation window percentage in relation to the certificate lifetime so that certificate renewal occurs at least 7 days after
the certificate has been issued and at least 7 days before it expires. *)
  certificate_authority_config :
    google_certificate_manager_certificate_issuance_config__certificate_authority_config
    list;
  timeouts :
    google_certificate_manager_certificate_issuance_config__timeouts
    option;
}
[@@deriving yojson_of]
(** google_certificate_manager_certificate_issuance_config *)

let google_certificate_manager_certificate_issuance_config
    ?description ?id ?labels ?location ?project ?timeouts
    ~key_algorithm ~lifetime ~name ~rotation_window_percentage
    ~certificate_authority_config __resource_id =
  let __resource_type =
    "google_certificate_manager_certificate_issuance_config"
  in
  let __resource =
    {
      description;
      id;
      key_algorithm;
      labels;
      lifetime;
      location;
      name;
      project;
      rotation_window_percentage;
      certificate_authority_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_certificate_manager_certificate_issuance_config
       __resource);
  ()
