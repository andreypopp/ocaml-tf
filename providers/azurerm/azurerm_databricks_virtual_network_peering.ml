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

type azurerm_databricks_virtual_network_peering = {
  allow_forwarded_traffic : bool prop option; [@option]
      (** allow_forwarded_traffic *)
  allow_gateway_transit : bool prop option; [@option]
      (** allow_gateway_transit *)
  allow_virtual_network_access : bool prop option; [@option]
      (** allow_virtual_network_access *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  remote_address_space_prefixes : string prop list;
      (** remote_address_space_prefixes *)
  remote_virtual_network_id : string prop;
      (** remote_virtual_network_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  use_remote_gateways : bool prop option; [@option]
      (** use_remote_gateways *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_databricks_virtual_network_peering *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_databricks_virtual_network_peering
    ?allow_forwarded_traffic ?allow_gateway_transit
    ?allow_virtual_network_access ?id ?use_remote_gateways ?timeouts
    ~name ~remote_address_space_prefixes ~remote_virtual_network_id
    ~resource_group_name ~workspace_id () :
    azurerm_databricks_virtual_network_peering =
  {
    allow_forwarded_traffic;
    allow_gateway_transit;
    allow_virtual_network_access;
    id;
    name;
    remote_address_space_prefixes;
    remote_virtual_network_id;
    resource_group_name;
    use_remote_gateways;
    workspace_id;
    timeouts;
  }

type t = {
  address_space_prefixes : string list prop;
  allow_forwarded_traffic : bool prop;
  allow_gateway_transit : bool prop;
  allow_virtual_network_access : bool prop;
  id : string prop;
  name : string prop;
  remote_address_space_prefixes : string list prop;
  remote_virtual_network_id : string prop;
  resource_group_name : string prop;
  use_remote_gateways : bool prop;
  virtual_network_id : string prop;
  workspace_id : string prop;
}

let make ?allow_forwarded_traffic ?allow_gateway_transit
    ?allow_virtual_network_access ?id ?use_remote_gateways ?timeouts
    ~name ~remote_address_space_prefixes ~remote_virtual_network_id
    ~resource_group_name ~workspace_id __id =
  let __type = "azurerm_databricks_virtual_network_peering" in
  let __attrs =
    ({
       address_space_prefixes =
         Prop.computed __type __id "address_space_prefixes";
       allow_forwarded_traffic =
         Prop.computed __type __id "allow_forwarded_traffic";
       allow_gateway_transit =
         Prop.computed __type __id "allow_gateway_transit";
       allow_virtual_network_access =
         Prop.computed __type __id "allow_virtual_network_access";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       remote_address_space_prefixes =
         Prop.computed __type __id "remote_address_space_prefixes";
       remote_virtual_network_id =
         Prop.computed __type __id "remote_virtual_network_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       use_remote_gateways =
         Prop.computed __type __id "use_remote_gateways";
       virtual_network_id =
         Prop.computed __type __id "virtual_network_id";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_databricks_virtual_network_peering
        (azurerm_databricks_virtual_network_peering
           ?allow_forwarded_traffic ?allow_gateway_transit
           ?allow_virtual_network_access ?id ?use_remote_gateways
           ?timeouts ~name ~remote_address_space_prefixes
           ~remote_virtual_network_id ~resource_group_name
           ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_forwarded_traffic
    ?allow_gateway_transit ?allow_virtual_network_access ?id
    ?use_remote_gateways ?timeouts ~name
    ~remote_address_space_prefixes ~remote_virtual_network_id
    ~resource_group_name ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?allow_forwarded_traffic ?allow_gateway_transit
      ?allow_virtual_network_access ?id ?use_remote_gateways
      ?timeouts ~name ~remote_address_space_prefixes
      ~remote_virtual_network_id ~resource_group_name ~workspace_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
