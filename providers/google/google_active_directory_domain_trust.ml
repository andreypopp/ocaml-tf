(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_active_directory_domain_trust *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_active_directory_domain_trust ?id ?project
    ?selective_authentication ?timeouts ~domain
    ~target_dns_ip_addresses ~target_domain_name ~trust_direction
    ~trust_handshake_secret ~trust_type () :
    google_active_directory_domain_trust =
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

let make ?id ?project ?selective_authentication ?timeouts ~domain
    ~target_dns_ip_addresses ~target_domain_name ~trust_direction
    ~trust_handshake_secret ~trust_type __id =
  let __type = "google_active_directory_domain_trust" in
  let __attrs =
    ({
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       selective_authentication =
         Prop.computed __type __id "selective_authentication";
       target_dns_ip_addresses =
         Prop.computed __type __id "target_dns_ip_addresses";
       target_domain_name =
         Prop.computed __type __id "target_domain_name";
       trust_direction = Prop.computed __type __id "trust_direction";
       trust_handshake_secret =
         Prop.computed __type __id "trust_handshake_secret";
       trust_type = Prop.computed __type __id "trust_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_active_directory_domain_trust
        (google_active_directory_domain_trust ?id ?project
           ?selective_authentication ?timeouts ~domain
           ~target_dns_ip_addresses ~target_domain_name
           ~trust_direction ~trust_handshake_secret ~trust_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?selective_authentication
    ?timeouts ~domain ~target_dns_ip_addresses ~target_domain_name
    ~trust_direction ~trust_handshake_secret ~trust_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?selective_authentication ?timeouts ~domain
      ~target_dns_ip_addresses ~target_domain_name ~trust_direction
      ~trust_handshake_secret ~trust_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
