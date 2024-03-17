(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_private_link_scope__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_private_link_scope__timeouts *)

type azurerm_monitor_private_link_scope = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_monitor_private_link_scope__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_private_link_scope *)

let azurerm_monitor_private_link_scope ?id ?tags ?timeouts ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_monitor_private_link_scope" in
  let __resource =
    { id; name; resource_group_name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_private_link_scope __resource);
  ()
