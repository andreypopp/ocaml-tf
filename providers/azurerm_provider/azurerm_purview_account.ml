(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_purview_account__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_purview_account__identity *)

type azurerm_purview_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_purview_account__timeouts *)

type azurerm_purview_account__managed_resources = {
  event_hub_namespace_id : string prop;
      (** event_hub_namespace_id *)
  resource_group_id : string prop;  (** resource_group_id *)
  storage_account_id : string prop;  (** storage_account_id *)
}
[@@deriving yojson_of]

type azurerm_purview_account = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_resource_group_name : string prop option; [@option]
      (** managed_resource_group_name *)
  name : string prop;  (** name *)
  public_network_enabled : bool prop option; [@option]
      (** public_network_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_purview_account__identity list;
  timeouts : azurerm_purview_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_purview_account *)

type t = {
  atlas_kafka_endpoint_primary_connection_string : string prop;
  atlas_kafka_endpoint_secondary_connection_string : string prop;
  catalog_endpoint : string prop;
  guardian_endpoint : string prop;
  id : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  managed_resources :
    azurerm_purview_account__managed_resources list prop;
  name : string prop;
  public_network_enabled : bool prop;
  resource_group_name : string prop;
  scan_endpoint : string prop;
  tags : (string * string) list prop;
}

let azurerm_purview_account ?id ?managed_resource_group_name
    ?public_network_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_purview_account" in
  let __resource =
    ({
       id;
       location;
       managed_resource_group_name;
       name;
       public_network_enabled;
       resource_group_name;
       tags;
       identity;
       timeouts;
     }
      : azurerm_purview_account)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_purview_account __resource);
  let __resource_attributes =
    ({
       atlas_kafka_endpoint_primary_connection_string =
         Prop.computed __resource_type __resource_id
           "atlas_kafka_endpoint_primary_connection_string";
       atlas_kafka_endpoint_secondary_connection_string =
         Prop.computed __resource_type __resource_id
           "atlas_kafka_endpoint_secondary_connection_string";
       catalog_endpoint =
         Prop.computed __resource_type __resource_id
           "catalog_endpoint";
       guardian_endpoint =
         Prop.computed __resource_type __resource_id
           "guardian_endpoint";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       managed_resource_group_name =
         Prop.computed __resource_type __resource_id
           "managed_resource_group_name";
       managed_resources =
         Prop.computed __resource_type __resource_id
           "managed_resources";
       name = Prop.computed __resource_type __resource_id "name";
       public_network_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       scan_endpoint =
         Prop.computed __resource_type __resource_id "scan_endpoint";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
