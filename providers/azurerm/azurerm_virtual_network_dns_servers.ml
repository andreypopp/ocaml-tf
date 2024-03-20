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

type azurerm_virtual_network_dns_servers = {
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  id : string prop option; [@option]  (** id *)
  virtual_network_id : string prop;  (** virtual_network_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_dns_servers *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_network_dns_servers ?dns_servers ?id ?timeouts
    ~virtual_network_id () : azurerm_virtual_network_dns_servers =
  { dns_servers; id; virtual_network_id; timeouts }

type t = {
  dns_servers : string list prop;
  id : string prop;
  virtual_network_id : string prop;
}

let make ?dns_servers ?id ?timeouts ~virtual_network_id __id =
  let __type = "azurerm_virtual_network_dns_servers" in
  let __attrs =
    ({
       dns_servers = Prop.computed __type __id "dns_servers";
       id = Prop.computed __type __id "id";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_network_dns_servers
        (azurerm_virtual_network_dns_servers ?dns_servers ?id
           ?timeouts ~virtual_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?dns_servers ?id ?timeouts
    ~virtual_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?dns_servers ?id ?timeouts ~virtual_network_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
