(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type target_dns_servers = {
  ip_address : string prop;  (** ip_address *)
  port : float prop option; [@option]  (** port *)
}
[@@deriving yojson_of]
(** target_dns_servers *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_private_dns_resolver_forwarding_rule = {
  dns_forwarding_ruleset_id : string prop;
      (** dns_forwarding_ruleset_id *)
  domain_name : string prop;  (** domain_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  target_dns_servers : target_dns_servers list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_forwarding_rule *)

let target_dns_servers ?port ~ip_address () : target_dns_servers =
  { ip_address; port }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_private_dns_resolver_forwarding_rule ?enabled ?id
    ?metadata ?timeouts ~dns_forwarding_ruleset_id ~domain_name ~name
    ~target_dns_servers () :
    azurerm_private_dns_resolver_forwarding_rule =
  {
    dns_forwarding_ruleset_id;
    domain_name;
    enabled;
    id;
    metadata;
    name;
    target_dns_servers;
    timeouts;
  }

type t = {
  dns_forwarding_ruleset_id : string prop;
  domain_name : string prop;
  enabled : bool prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
}

let register ?tf_module ?enabled ?id ?metadata ?timeouts
    ~dns_forwarding_ruleset_id ~domain_name ~name ~target_dns_servers
    __resource_id =
  let __resource_type =
    "azurerm_private_dns_resolver_forwarding_rule"
  in
  let __resource =
    azurerm_private_dns_resolver_forwarding_rule ?enabled ?id
      ?metadata ?timeouts ~dns_forwarding_ruleset_id ~domain_name
      ~name ~target_dns_servers ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_resolver_forwarding_rule
       __resource);
  let __resource_attributes =
    ({
       dns_forwarding_ruleset_id =
         Prop.computed __resource_type __resource_id
           "dns_forwarding_ruleset_id";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
