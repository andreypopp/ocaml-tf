(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type delegation__service_delegation = {
  actions : string prop list option; [@option]  (** actions *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** delegation__service_delegation *)

type delegation = {
  name : string prop;  (** name *)
  service_delegation : delegation__service_delegation list;
}
[@@deriving yojson_of]
(** delegation *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_subnet = {
  address_prefixes : string prop list;  (** address_prefixes *)
  enforce_private_link_endpoint_network_policies : bool prop option;
      [@option]
      (** enforce_private_link_endpoint_network_policies *)
  enforce_private_link_service_network_policies : bool prop option;
      [@option]
      (** enforce_private_link_service_network_policies *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  private_endpoint_network_policies_enabled : bool prop option;
      [@option]
      (** private_endpoint_network_policies_enabled *)
  private_link_service_network_policies_enabled : bool prop option;
      [@option]
      (** private_link_service_network_policies_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_endpoint_policy_ids : string prop list option; [@option]
      (** service_endpoint_policy_ids *)
  service_endpoints : string prop list option; [@option]
      (** service_endpoints *)
  virtual_network_name : string prop;  (** virtual_network_name *)
  delegation : delegation list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subnet *)

let delegation__service_delegation ?actions ~name () :
    delegation__service_delegation =
  { actions; name }

let delegation ~name ~service_delegation () : delegation =
  { name; service_delegation }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_subnet ?enforce_private_link_endpoint_network_policies
    ?enforce_private_link_service_network_policies ?id
    ?private_endpoint_network_policies_enabled
    ?private_link_service_network_policies_enabled
    ?service_endpoint_policy_ids ?service_endpoints ?timeouts
    ~address_prefixes ~name ~resource_group_name
    ~virtual_network_name ~delegation () : azurerm_subnet =
  {
    address_prefixes;
    enforce_private_link_endpoint_network_policies;
    enforce_private_link_service_network_policies;
    id;
    name;
    private_endpoint_network_policies_enabled;
    private_link_service_network_policies_enabled;
    resource_group_name;
    service_endpoint_policy_ids;
    service_endpoints;
    virtual_network_name;
    delegation;
    timeouts;
  }

type t = {
  address_prefixes : string list prop;
  enforce_private_link_endpoint_network_policies : bool prop;
  enforce_private_link_service_network_policies : bool prop;
  id : string prop;
  name : string prop;
  private_endpoint_network_policies_enabled : bool prop;
  private_link_service_network_policies_enabled : bool prop;
  resource_group_name : string prop;
  service_endpoint_policy_ids : string list prop;
  service_endpoints : string list prop;
  virtual_network_name : string prop;
}

let make ?enforce_private_link_endpoint_network_policies
    ?enforce_private_link_service_network_policies ?id
    ?private_endpoint_network_policies_enabled
    ?private_link_service_network_policies_enabled
    ?service_endpoint_policy_ids ?service_endpoints ?timeouts
    ~address_prefixes ~name ~resource_group_name
    ~virtual_network_name ~delegation __id =
  let __type = "azurerm_subnet" in
  let __attrs =
    ({
       address_prefixes =
         Prop.computed __type __id "address_prefixes";
       enforce_private_link_endpoint_network_policies =
         Prop.computed __type __id
           "enforce_private_link_endpoint_network_policies";
       enforce_private_link_service_network_policies =
         Prop.computed __type __id
           "enforce_private_link_service_network_policies";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       private_endpoint_network_policies_enabled =
         Prop.computed __type __id
           "private_endpoint_network_policies_enabled";
       private_link_service_network_policies_enabled =
         Prop.computed __type __id
           "private_link_service_network_policies_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_endpoint_policy_ids =
         Prop.computed __type __id "service_endpoint_policy_ids";
       service_endpoints =
         Prop.computed __type __id "service_endpoints";
       virtual_network_name =
         Prop.computed __type __id "virtual_network_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_subnet
        (azurerm_subnet
           ?enforce_private_link_endpoint_network_policies
           ?enforce_private_link_service_network_policies ?id
           ?private_endpoint_network_policies_enabled
           ?private_link_service_network_policies_enabled
           ?service_endpoint_policy_ids ?service_endpoints ?timeouts
           ~address_prefixes ~name ~resource_group_name
           ~virtual_network_name ~delegation ());
    attrs = __attrs;
  }

let register ?tf_module
    ?enforce_private_link_endpoint_network_policies
    ?enforce_private_link_service_network_policies ?id
    ?private_endpoint_network_policies_enabled
    ?private_link_service_network_policies_enabled
    ?service_endpoint_policy_ids ?service_endpoints ?timeouts
    ~address_prefixes ~name ~resource_group_name
    ~virtual_network_name ~delegation __id =
  let (r : _ Tf_core.resource) =
    make ?enforce_private_link_endpoint_network_policies
      ?enforce_private_link_service_network_policies ?id
      ?private_endpoint_network_policies_enabled
      ?private_link_service_network_policies_enabled
      ?service_endpoint_policy_ids ?service_endpoints ?timeouts
      ~address_prefixes ~name ~resource_group_name
      ~virtual_network_name ~delegation __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
