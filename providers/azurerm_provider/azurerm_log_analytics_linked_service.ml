(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_linked_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_linked_service__timeouts *)

type azurerm_log_analytics_linked_service = {
  id : string prop option; [@option]  (** id *)
  read_access_id : string prop option; [@option]
      (** read_access_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  workspace_id : string prop;  (** workspace_id *)
  write_access_id : string prop option; [@option]
      (** write_access_id *)
  timeouts : azurerm_log_analytics_linked_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_linked_service *)

let azurerm_log_analytics_linked_service ?id ?read_access_id
    ?write_access_id ?timeouts ~resource_group_name ~workspace_id
    __resource_id =
  let __resource_type = "azurerm_log_analytics_linked_service" in
  let __resource =
    {
      id;
      read_access_id;
      resource_group_name;
      workspace_id;
      write_access_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_linked_service __resource);
  ()
