(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?tags ?timeouts ~location ~name
    ~private_dns_resolver_outbound_endpoint_ids ~resource_group_name
    __id =
  let __type =
    "azurerm_private_dns_resolver_dns_forwarding_ruleset"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_dns_resolver_outbound_endpoint_ids =
         Prop.computed __type __id
           "private_dns_resolver_outbound_endpoint_ids";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_dns_resolver_dns_forwarding_ruleset
        (azurerm_private_dns_resolver_dns_forwarding_ruleset ?id
           ?tags ?timeouts ~location ~name
           ~private_dns_resolver_outbound_endpoint_ids
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~private_dns_resolver_outbound_endpoint_ids ~resource_group_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name
      ~private_dns_resolver_outbound_endpoint_ids
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
