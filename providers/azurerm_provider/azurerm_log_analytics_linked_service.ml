(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_log_analytics_linked_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_linked_service__timeouts *)

type azurerm_log_analytics_linked_service = {
  resource_group_name : string;  (** resource_group_name *)
  workspace_id : string;  (** workspace_id *)
  write_access_id : string option; [@option]  (** write_access_id *)
  timeouts : azurerm_log_analytics_linked_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_linked_service *)

let azurerm_log_analytics_linked_service ?write_access_id ?timeouts
    ~resource_group_name ~workspace_id __resource_id =
  let __resource_type = "azurerm_log_analytics_linked_service" in
  let __resource =
    { resource_group_name; workspace_id; write_access_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_linked_service __resource);
  ()