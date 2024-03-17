(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_log_analytics_workspace_table__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_workspace_table__timeouts *)

type azurerm_log_analytics_workspace_table = {
  name : string;  (** name *)
  plan : string option; [@option]  (** plan *)
  retention_in_days : float option; [@option]
      (** retention_in_days *)
  total_retention_in_days : float option; [@option]
      (** total_retention_in_days *)
  workspace_id : string;  (** workspace_id *)
  timeouts : azurerm_log_analytics_workspace_table__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_workspace_table *)

let azurerm_log_analytics_workspace_table ?plan ?retention_in_days
    ?total_retention_in_days ?timeouts ~name ~workspace_id
    __resource_id =
  let __resource_type = "azurerm_log_analytics_workspace_table" in
  let __resource =
    {
      name;
      plan;
      retention_in_days;
      total_retention_in_days;
      workspace_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_workspace_table __resource);
  ()
