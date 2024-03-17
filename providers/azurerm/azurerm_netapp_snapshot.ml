(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_netapp_snapshot__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot__timeouts *)

type azurerm_netapp_snapshot = {
  account_name : string prop;  (** account_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  pool_name : string prop;  (** pool_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  volume_name : string prop;  (** volume_name *)
  timeouts : azurerm_netapp_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot *)

type t = {
  account_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  pool_name : string prop;
  resource_group_name : string prop;
  volume_name : string prop;
}

let azurerm_netapp_snapshot ?id ?timeouts ~account_name ~location
    ~name ~pool_name ~resource_group_name ~volume_name __resource_id
    =
  let __resource_type = "azurerm_netapp_snapshot" in
  let __resource =
    ({
       account_name;
       id;
       location;
       name;
       pool_name;
       resource_group_name;
       volume_name;
       timeouts;
     }
      : azurerm_netapp_snapshot)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_snapshot __resource);
  let __resource_attributes =
    ({
       account_name =
         Prop.computed __resource_type __resource_id "account_name";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       pool_name =
         Prop.computed __resource_type __resource_id "pool_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       volume_name =
         Prop.computed __resource_type __resource_id "volume_name";
     }
      : t)
  in
  __resource_attributes
