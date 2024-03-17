(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_notification_hub_namespace__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_notification_hub_namespace__timeouts *)

type azurerm_notification_hub_namespace = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  namespace_type : string prop;  (** namespace_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_notification_hub_namespace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_notification_hub_namespace *)

let azurerm_notification_hub_namespace ?enabled ?id ?tags ?timeouts
    ~location ~name ~namespace_type ~resource_group_name ~sku_name
    __resource_id =
  let __resource_type = "azurerm_notification_hub_namespace" in
  let __resource =
    {
      enabled;
      id;
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
