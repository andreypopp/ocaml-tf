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

type azurerm_integration_service_environment = {
  access_endpoint_type : string prop;  (** access_endpoint_type *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop option; [@option]  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_network_subnet_ids : string prop list;
      (** virtual_network_subnet_ids *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_integration_service_environment *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_integration_service_environment ?id ?sku_name ?tags
    ?timeouts ~access_endpoint_type ~location ~name
    ~resource_group_name ~virtual_network_subnet_ids () :
    azurerm_integration_service_environment =
  {
    access_endpoint_type;
    id;
    location;
    name;
    resource_group_name;
    sku_name;
    tags;
    virtual_network_subnet_ids;
    timeouts;
  }

type t = {
  access_endpoint_type : string prop;
  connector_endpoint_ip_addresses : string list prop;
  connector_outbound_ip_addresses : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  virtual_network_subnet_ids : string list prop;
  workflow_endpoint_ip_addresses : string list prop;
  workflow_outbound_ip_addresses : string list prop;
}

let register ?tf_module ?id ?sku_name ?tags ?timeouts
    ~access_endpoint_type ~location ~name ~resource_group_name
    ~virtual_network_subnet_ids __resource_id =
  let __resource_type = "azurerm_integration_service_environment" in
  let __resource =
    azurerm_integration_service_environment ?id ?sku_name ?tags
      ?timeouts ~access_endpoint_type ~location ~name
      ~resource_group_name ~virtual_network_subnet_ids ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_integration_service_environment __resource);
  let __resource_attributes =
    ({
       access_endpoint_type =
         Prop.computed __resource_type __resource_id
           "access_endpoint_type";
       connector_endpoint_ip_addresses =
         Prop.computed __resource_type __resource_id
           "connector_endpoint_ip_addresses";
       connector_outbound_ip_addresses =
         Prop.computed __resource_type __resource_id
           "connector_outbound_ip_addresses";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       virtual_network_subnet_ids =
         Prop.computed __resource_type __resource_id
           "virtual_network_subnet_ids";
       workflow_endpoint_ip_addresses =
         Prop.computed __resource_type __resource_id
           "workflow_endpoint_ip_addresses";
       workflow_outbound_ip_addresses =
         Prop.computed __resource_type __resource_id
           "workflow_outbound_ip_addresses";
     }
      : t)
  in
  __resource_attributes
