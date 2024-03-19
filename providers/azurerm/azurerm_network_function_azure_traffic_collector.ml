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

type azurerm_network_function_azure_traffic_collector = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_function_azure_traffic_collector *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_function_azure_traffic_collector ?id ?tags
    ?timeouts ~location ~name ~resource_group_name () :
    azurerm_network_function_azure_traffic_collector =
  { id; location; name; resource_group_name; tags; timeouts }

type t = {
  collector_policy_ids : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  virtual_hub_id : string list prop;
}

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_network_function_azure_traffic_collector"
  in
  let __resource =
    azurerm_network_function_azure_traffic_collector ?id ?tags
      ?timeouts ~location ~name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_function_azure_traffic_collector
       __resource);
  let __resource_attributes =
    ({
       collector_policy_ids =
         Prop.computed __resource_type __resource_id
           "collector_policy_ids";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       virtual_hub_id =
         Prop.computed __resource_type __resource_id "virtual_hub_id";
     }
      : t)
  in
  __resource_attributes
