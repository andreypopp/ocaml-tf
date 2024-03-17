(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_relay_namespace__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_relay_namespace__timeouts *)

type azurerm_relay_namespace = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_relay_namespace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_relay_namespace *)

type t = {
  id : string prop;
  location : string prop;
  metric_id : string prop;
  name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_relay_namespace ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_relay_namespace" in
  let __resource =
    ({
       id;
       location;
       name;
       resource_group_name;
       sku_name;
       tags;
       timeouts;
     }
      : azurerm_relay_namespace)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_relay_namespace __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       metric_id =
         Prop.computed __resource_type __resource_id "metric_id";
       name = Prop.computed __resource_type __resource_id "name";
       primary_connection_string =
         Prop.computed __resource_type __resource_id
           "primary_connection_string";
       primary_key =
         Prop.computed __resource_type __resource_id "primary_key";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_connection_string =
         Prop.computed __resource_type __resource_id
           "secondary_connection_string";
       secondary_key =
         Prop.computed __resource_type __resource_id "secondary_key";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
