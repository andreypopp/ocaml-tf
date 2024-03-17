(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_device_update_account__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_account__identity *)

type azurerm_iothub_device_update_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_account__timeouts *)

type azurerm_iothub_device_update_account = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_iothub_device_update_account__identity list;
  timeouts : azurerm_iothub_device_update_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_device_update_account *)

type t = {
  host_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

let azurerm_iothub_device_update_account ?id
    ?public_network_access_enabled ?sku ?tags ?timeouts ~location
    ~name ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_iothub_device_update_account" in
  let __resource =
    ({
       id;
       location;
       name;
       public_network_access_enabled;
       resource_group_name;
       sku;
       tags;
       identity;
       timeouts;
     }
      : azurerm_iothub_device_update_account)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_device_update_account __resource);
  let __resource_attributes =
    ({
       host_name =
         Prop.computed __resource_type __resource_id "host_name";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku = Prop.computed __resource_type __resource_id "sku";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
