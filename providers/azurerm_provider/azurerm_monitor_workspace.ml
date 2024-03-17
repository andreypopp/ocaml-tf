(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_workspace__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_workspace__timeouts *)

type azurerm_monitor_workspace = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_monitor_workspace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_workspace *)

type t = {
  default_data_collection_endpoint_id : string prop;
  default_data_collection_rule_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  query_endpoint : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_monitor_workspace ?id ?public_network_access_enabled
    ?tags ?timeouts ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_monitor_workspace" in
  let __resource =
    ({
       id;
       location;
       name;
       public_network_access_enabled;
       resource_group_name;
       tags;
       timeouts;
     }
      : azurerm_monitor_workspace)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_workspace __resource);
  let __resource_attributes =
    ({
       default_data_collection_endpoint_id =
         Prop.computed __resource_type __resource_id
           "default_data_collection_endpoint_id";
       default_data_collection_rule_id =
         Prop.computed __resource_type __resource_id
           "default_data_collection_rule_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       query_endpoint =
         Prop.computed __resource_type __resource_id "query_endpoint";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
