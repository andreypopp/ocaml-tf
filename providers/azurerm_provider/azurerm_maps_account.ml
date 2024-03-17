(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_maps_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_maps_account__timeouts *)

type azurerm_maps_account = {
  id : string prop option; [@option]  (** id *)
  local_authentication_enabled : bool prop option; [@option]
      (** local_authentication_enabled *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_maps_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_maps_account *)

type t = {
  id : string prop;
  local_authentication_enabled : bool prop;
  name : string prop;
  primary_access_key : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  x_ms_client_id : string prop;
}

let azurerm_maps_account ?id ?local_authentication_enabled ?tags
    ?timeouts ~name ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_maps_account" in
  let __resource =
    ({
       id;
       local_authentication_enabled;
       name;
       resource_group_name;
       sku_name;
       tags;
       timeouts;
     }
      : azurerm_maps_account)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_maps_account __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       local_authentication_enabled =
         Prop.computed __resource_type __resource_id
           "local_authentication_enabled";
       name = Prop.computed __resource_type __resource_id "name";
       primary_access_key =
         Prop.computed __resource_type __resource_id
           "primary_access_key";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_access_key =
         Prop.computed __resource_type __resource_id
           "secondary_access_key";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       x_ms_client_id =
         Prop.computed __resource_type __resource_id "x_ms_client_id";
     }
      : t)
  in
  __resource_attributes
