(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = { type_ : string prop [@key "type"]  (** type *) }
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_stack_hci_cluster = {
  automanage_configuration_id : string prop option; [@option]
      (** automanage_configuration_id *)
  client_id : string prop;  (** client_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stack_hci_cluster *)

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stack_hci_cluster ?automanage_configuration_id ?id ?tags
    ?tenant_id ?timeouts ~client_id ~location ~name
    ~resource_group_name ~identity () : azurerm_stack_hci_cluster =
  {
    automanage_configuration_id;
    client_id;
    id;
    location;
    name;
    resource_group_name;
    tags;
    tenant_id;
    identity;
    timeouts;
  }

type t = {
  automanage_configuration_id : string prop;
  client_id : string prop;
  cloud_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_provider_object_id : string prop;
  service_endpoint : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
}

let make ?automanage_configuration_id ?id ?tags ?tenant_id ?timeouts
    ~client_id ~location ~name ~resource_group_name ~identity __id =
  let __type = "azurerm_stack_hci_cluster" in
  let __attrs =
    ({
       automanage_configuration_id =
         Prop.computed __type __id "automanage_configuration_id";
       client_id = Prop.computed __type __id "client_id";
       cloud_id = Prop.computed __type __id "cloud_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       resource_provider_object_id =
         Prop.computed __type __id "resource_provider_object_id";
       service_endpoint =
         Prop.computed __type __id "service_endpoint";
       tags = Prop.computed __type __id "tags";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stack_hci_cluster
        (azurerm_stack_hci_cluster ?automanage_configuration_id ?id
           ?tags ?tenant_id ?timeouts ~client_id ~location ~name
           ~resource_group_name ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?automanage_configuration_id ?id ?tags
    ?tenant_id ?timeouts ~client_id ~location ~name
    ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?automanage_configuration_id ?id ?tags ?tenant_id ?timeouts
      ~client_id ~location ~name ~resource_group_name ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
