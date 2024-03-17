(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_certificate_manager_trust_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_certificate_manager_trust_config__timeouts *)

type google_certificate_manager_trust_config__trust_stores__intermediate_cas = {
  pem_certificate : string option; [@option]
      (** PEM intermediate certificate used for building up paths for validation.
Each certificate provided in PEM format may occupy up to 5kB. *)
}
[@@deriving yojson_of]
(** Set of intermediate CA certificates used for the path building phase of chain validation.
The field is currently not supported if trust config is used for the workload certificate feature. *)

type google_certificate_manager_trust_config__trust_stores__trust_anchors = {
  pem_certificate : string option; [@option]
      (** PEM root certificate of the PKI used for validation.
Each certificate provided in PEM format may occupy up to 5kB. *)
}
[@@deriving yojson_of]
(** List of Trust Anchors to be used while performing validation against a given TrustStore. *)

type google_certificate_manager_trust_config__trust_stores = {
  intermediate_cas :
    google_certificate_manager_trust_config__trust_stores__intermediate_cas
    list;
  trust_anchors :
    google_certificate_manager_trust_config__trust_stores__trust_anchors
    list;
}
[@@deriving yojson_of]
(** Set of trust stores to perform validation against.
This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. *)

type google_certificate_manager_trust_config = {
  description : string option; [@option]
      (** One or more paragraphs of text description of a trust config. *)
  labels : (string * string) list option; [@option]
      (** Set of label tags associated with the trust config.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** The trust config location. *)
  name : string;
      (** A user-defined name of the trust config. Trust config names must be unique globally. *)
  timeouts :
    google_certificate_manager_trust_config__timeouts option;
  trust_stores :
    google_certificate_manager_trust_config__trust_stores list;
}
[@@deriving yojson_of]
(** google_certificate_manager_trust_config *)

let google_certificate_manager_trust_config ?description ?labels
    ?timeouts ~location ~name ~trust_stores __resource_id =
  let __resource_type = "google_certificate_manager_trust_config" in
  let __resource =
    { description; labels; location; name; timeouts; trust_stores }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_certificate_manager_trust_config __resource);
  ()
