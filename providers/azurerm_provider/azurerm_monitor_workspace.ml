(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_workspace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_workspace__timeouts *)

type azurerm_monitor_workspace = {
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_monitor_workspace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_workspace *)

let azurerm_monitor_workspace ?public_network_access_enabled ?tags
    ?timeouts ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_monitor_workspace" in
  let __resource =
    {
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_workspace __resource);
  ()
