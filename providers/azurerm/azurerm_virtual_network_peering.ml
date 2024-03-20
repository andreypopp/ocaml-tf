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

type azurerm_virtual_network_peering = {
  allow_forwarded_traffic : bool prop option; [@option]
      (** allow_forwarded_traffic *)
  allow_gateway_transit : bool prop option; [@option]
      (** allow_gateway_transit *)
  allow_virtual_network_access : bool prop option; [@option]
      (** allow_virtual_network_access *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  remote_virtual_network_id : string prop;
      (** remote_virtual_network_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
  use_remote_gateways : bool prop option; [@option]
      (** use_remote_gateways *)
  virtual_network_name : string prop;  (** virtual_network_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_peering *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_network_peering ?allow_forwarded_traffic
    ?allow_gateway_transit ?allow_virtual_network_access ?id
    ?triggers ?use_remote_gateways ?timeouts ~name
    ~remote_virtual_network_id ~resource_group_name
    ~virtual_network_name () : azurerm_virtual_network_peering =
  {
    allow_forwarded_traffic;
    allow_gateway_transit;
    allow_virtual_network_access;
    id;
    name;
    remote_virtual_network_id;
    resource_group_name;
    triggers;
    use_remote_gateways;
    virtual_network_name;
    timeouts;
  }

type t = {
  allow_forwarded_traffic : bool prop;
  allow_gateway_transit : bool prop;
  allow_virtual_network_access : bool prop;
  id : string prop;
  name : string prop;
  remote_virtual_network_id : string prop;
  resource_group_name : string prop;
  triggers : (string * string) list prop;
  use_remote_gateways : bool prop;
  virtual_network_name : string prop;
}

let make ?allow_forwarded_traffic ?allow_gateway_transit
    ?allow_virtual_network_access ?id ?triggers ?use_remote_gateways
    ?timeouts ~name ~remote_virtual_network_id ~resource_group_name
    ~virtual_network_name __id =
  let __type = "azurerm_virtual_network_peering" in
  let __attrs =
    ({
       allow_forwarded_traffic =
         Prop.computed __type __id "allow_forwarded_traffic";
       allow_gateway_transit =
         Prop.computed __type __id "allow_gateway_transit";
       allow_virtual_network_access =
         Prop.computed __type __id "allow_virtual_network_access";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       remote_virtual_network_id =
         Prop.computed __type __id "remote_virtual_network_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       triggers = Prop.computed __type __id "triggers";
       use_remote_gateways =
         Prop.computed __type __id "use_remote_gateways";
       virtual_network_name =
         Prop.computed __type __id "virtual_network_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_network_peering
        (azurerm_virtual_network_peering ?allow_forwarded_traffic
           ?allow_gateway_transit ?allow_virtual_network_access ?id
           ?triggers ?use_remote_gateways ?timeouts ~name
           ~remote_virtual_network_id ~resource_group_name
           ~virtual_network_name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_forwarded_traffic
    ?allow_gateway_transit ?allow_virtual_network_access ?id
    ?triggers ?use_remote_gateways ?timeouts ~name
    ~remote_virtual_network_id ~resource_group_name
    ~virtual_network_name __id =
  let (r : _ Tf_core.resource) =
    make ?allow_forwarded_traffic ?allow_gateway_transit
      ?allow_virtual_network_access ?id ?triggers
      ?use_remote_gateways ?timeouts ~name ~remote_virtual_network_id
      ~resource_group_name ~virtual_network_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
