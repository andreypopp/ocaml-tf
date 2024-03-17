(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_monitor_private_link_scope__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_private_link_scope__timeouts *)

type azurerm_monitor_private_link_scope = {
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_monitor_private_link_scope__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_private_link_scope *)

let azurerm_monitor_private_link_scope ?tags ?timeouts ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_monitor_private_link_scope" in
  let __resource = { name; resource_group_name; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_private_link_scope __resource);
  ()
