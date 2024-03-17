(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_active_directory_domain_trust__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_active_directory_domain_trust__timeouts *)

type google_active_directory_domain_trust = {
  domain : string;
      (** The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions,
https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains. *)
  id : string option; [@option]  (** id *)
  project : string option; [@option]  (** project *)
  selective_authentication : bool option; [@option]
      (** Whether the trusted side has forest/domain wide access or selective access to an approved set of resources. *)
  target_dns_ip_addresses : string list;
      (** The target DNS server IP addresses which can resolve the remote domain involved in the trust. *)
  target_domain_name : string;
      (** The fully qualified target domain name which will be in trust with the current domain. *)
  trust_direction : string;
      (** The trust direction, which decides if the current domain is trusted, trusting, or both. Possible values: [INBOUND, OUTBOUND, BIDIRECTIONAL] *)
  trust_handshake_secret : string;
      (** The trust secret used for the handshake with the target domain. This will not be stored. *)
  trust_type : string;
      (** The type of trust represented by the trust resource. Possible values: [FOREST, EXTERNAL] *)
  timeouts : google_active_directory_domain_trust__timeouts option;
}
[@@deriving yojson_of]
(** google_active_directory_domain_trust *)

let google_active_directory_domain_trust ?id ?project
    ?selective_authentication ?timeouts ~domain
    ~target_dns_ip_addresses ~target_domain_name ~trust_direction
    ~trust_handshake_secret ~trust_type __resource_id =
  let __resource_type = "google_active_directory_domain_trust" in
  let __resource =
    {
      domain;
      id;
      project;
      selective_authentication;
      target_dns_ip_addresses;
      target_domain_name;
      trust_direction;
      trust_handshake_secret;
      trust_type;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_active_directory_domain_trust __resource);
  ()
