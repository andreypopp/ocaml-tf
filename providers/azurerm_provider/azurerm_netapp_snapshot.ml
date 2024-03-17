(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_netapp_snapshot__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot__timeouts *)

type azurerm_netapp_snapshot = {
  account_name : string;  (** account_name *)
  location : string;  (** location *)
  name : string;  (** name *)
  pool_name : string;  (** pool_name *)
  resource_group_name : string;  (** resource_group_name *)
  volume_name : string;  (** volume_name *)
  timeouts : azurerm_netapp_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot *)

let azurerm_netapp_snapshot ?timeouts ~account_name ~location ~name
    ~pool_name ~resource_group_name ~volume_name __resource_id =
  let __resource_type = "azurerm_netapp_snapshot" in
  let __resource =
    {
      account_name;
      location;
      name;
      pool_name;
      resource_group_name;
      volume_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_snapshot __resource);
  ()
