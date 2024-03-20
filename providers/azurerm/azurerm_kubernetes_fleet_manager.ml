(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hub_profile = { dns_prefix : string prop  (** dns_prefix *) }
[@@deriving yojson_of]
(** hub_profile *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_kubernetes_fleet_manager = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  hub_profile : hub_profile list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kubernetes_fleet_manager *)

let hub_profile ~dns_prefix () : hub_profile = { dns_prefix }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kubernetes_fleet_manager ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~hub_profile () :
    azurerm_kubernetes_fleet_manager =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    hub_profile;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~hub_profile __id =
  let __type = "azurerm_kubernetes_fleet_manager" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
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
      yojson_of_azurerm_kubernetes_fleet_manager
        (azurerm_kubernetes_fleet_manager ?id ?tags ?timeouts
           ~location ~name ~resource_group_name ~hub_profile ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~hub_profile __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~hub_profile __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
