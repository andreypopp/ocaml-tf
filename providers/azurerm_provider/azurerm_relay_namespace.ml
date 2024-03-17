(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_relay_namespace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_relay_namespace__timeouts *)

type azurerm_relay_namespace = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_relay_namespace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_relay_namespace *)

let azurerm_relay_namespace ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_relay_namespace" in
  let __resource =
    {
      id;
      location;
      name;
      resource_group_name;
      sku_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_relay_namespace __resource);
  ()
