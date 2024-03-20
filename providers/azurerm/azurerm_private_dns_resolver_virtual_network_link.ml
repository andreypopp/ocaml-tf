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

type azurerm_private_dns_resolver_virtual_network_link = {
  dns_forwarding_ruleset_id : string prop;
      (** dns_forwarding_ruleset_id *)
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  virtual_network_id : string prop;  (** virtual_network_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_virtual_network_link *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_private_dns_resolver_virtual_network_link ?id ?metadata
    ?timeouts ~dns_forwarding_ruleset_id ~name ~virtual_network_id ()
    : azurerm_private_dns_resolver_virtual_network_link =
  {
    dns_forwarding_ruleset_id;
    id;
    metadata;
    name;
    virtual_network_id;
    timeouts;
  }

type t = {
  dns_forwarding_ruleset_id : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  virtual_network_id : string prop;
}

let make ?id ?metadata ?timeouts ~dns_forwarding_ruleset_id ~name
    ~virtual_network_id __id =
  let __type = "azurerm_private_dns_resolver_virtual_network_link" in
  let __attrs =
    ({
       dns_forwarding_ruleset_id =
         Prop.computed __type __id "dns_forwarding_ruleset_id";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_dns_resolver_virtual_network_link
        (azurerm_private_dns_resolver_virtual_network_link ?id
           ?metadata ?timeouts ~dns_forwarding_ruleset_id ~name
           ~virtual_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?metadata ?timeouts
    ~dns_forwarding_ruleset_id ~name ~virtual_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?metadata ?timeouts ~dns_forwarding_ruleset_id ~name
      ~virtual_network_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
