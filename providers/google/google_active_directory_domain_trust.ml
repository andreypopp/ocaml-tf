(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_active_directory_domain_trust__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_active_directory_domain_trust__timeouts *)

type google_active_directory_domain_trust = {
  domain : string prop;
      (** The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions,
https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  selective_authentication : bool prop option; [@option]
      (** Whether the trusted side has forest/domain wide access or selective access to an approved set of resources. *)
  target_dns_ip_addresses : string prop list;
      (** The target DNS server IP addresses which can resolve the remote domain involved in the trust. *)
  target_domain_name : string prop;
      (** The fully qualified target domain name which will be in trust with the current domain. *)
  trust_direction : string prop;
      (** The trust direction, which decides if the current domain is trusted, trusting, or both. Possible values: [INBOUND, OUTBOUND, BIDIRECTIONAL] *)
  trust_handshake_secret : string prop;
      (** The trust secret used for the handshake with the target domain. This will not be stored. *)
  trust_type : string prop;
      (** The type of trust represented by the trust resource. Possible values: [FOREST, EXTERNAL] *)
  timeouts : google_active_directory_domain_trust__timeouts option;
}
[@@deriving yojson_of]
(** google_active_directory_domain_trust *)

type t = {
  domain : string prop;
  id : string prop;
  project : string prop;
  selective_authentication : bool prop;
  target_dns_ip_addresses : string list prop;
  target_domain_name : string prop;
  trust_direction : string prop;
  trust_handshake_secret : string prop;
  trust_type : string prop;
}

let google_active_directory_domain_trust ?id ?project
    ?selective_authentication ?timeouts ~domain
    ~target_dns_ip_addresses ~target_domain_name ~trust_direction
    ~trust_handshake_secret ~trust_type __resource_id =
  let __resource_type = "google_active_directory_domain_trust" in
  let __resource =
    ({
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
      : google_active_directory_domain_trust)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_active_directory_domain_trust __resource);
  let __resource_attributes =
    ({
       domain = Prop.computed __resource_type __resource_id "domain";
       id = Prop.computed __resource_type __resource_id "id";
       project =
         Prop.computed __resource_type __resource_id "project";
       selective_authentication =
         Prop.computed __resource_type __resource_id
           "selective_authentication";
       target_dns_ip_addresses =
         Prop.computed __resource_type __resource_id
           "target_dns_ip_addresses";
       target_domain_name =
         Prop.computed __resource_type __resource_id
           "target_domain_name";
       trust_direction =
         Prop.computed __resource_type __resource_id
           "trust_direction";
       trust_handshake_secret =
         Prop.computed __resource_type __resource_id
           "trust_handshake_secret";
       trust_type =
         Prop.computed __resource_type __resource_id "trust_type";
     }
      : t)
  in
  __resource_attributes
