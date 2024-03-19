(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_private_dns_resolver_dns_forwarding_ruleset = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  private_dns_resolver_outbound_endpoint_ids : string prop list;
      (** private_dns_resolver_outbound_endpoint_ids *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_dns_forwarding_ruleset *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_private_dns_resolver_dns_forwarding_ruleset ?id ?tags
    ?timeouts ~location ~name
    ~private_dns_resolver_outbound_endpoint_ids ~resource_group_name
    () : azurerm_private_dns_resolver_dns_forwarding_ruleset =
  {
    id;
    location;
    name;
    private_dns_resolver_outbound_endpoint_ids;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  private_dns_resolver_outbound_endpoint_ids : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~private_dns_resolver_outbound_endpoint_ids ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_private_dns_resolver_dns_forwarding_ruleset"
  in
  let __resource =
    azurerm_private_dns_resolver_dns_forwarding_ruleset ?id ?tags
      ?timeouts ~location ~name
      ~private_dns_resolver_outbound_endpoint_ids
      ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_resolver_dns_forwarding_ruleset
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       private_dns_resolver_outbound_endpoint_ids =
         Prop.computed __resource_type __resource_id
           "private_dns_resolver_outbound_endpoint_ids";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
