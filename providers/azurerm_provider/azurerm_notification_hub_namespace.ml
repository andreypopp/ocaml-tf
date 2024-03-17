(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_notification_hub_namespace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_notification_hub_namespace__timeouts *)

type azurerm_notification_hub_namespace = {
  enabled : bool option; [@option]  (** enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  namespace_type : string;  (** namespace_type *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_notification_hub_namespace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_notification_hub_namespace *)

let azurerm_notification_hub_namespace ?enabled ?tags ?timeouts
    ~location ~name ~namespace_type ~resource_group_name ~sku_name
    __resource_id =
  let __resource_type = "azurerm_notification_hub_namespace" in
  let __resource =
    {
      enabled;
      location;
      name;
      namespace_type;
      resource_group_name;
      sku_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_notification_hub_namespace __resource);
  ()
