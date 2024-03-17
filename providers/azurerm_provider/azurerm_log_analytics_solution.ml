(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_solution__plan = {
  name : string;  (** name *)
  product : string;  (** product *)
  promotion_code : string option; [@option]  (** promotion_code *)
  publisher : string;  (** publisher *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_solution__plan *)

type azurerm_log_analytics_solution__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_solution__timeouts *)

type azurerm_log_analytics_solution = {
  location : string;  (** location *)
  resource_group_name : string;  (** resource_group_name *)
  solution_name : string;  (** solution_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  workspace_name : string;  (** workspace_name *)
  workspace_resource_id : string;  (** workspace_resource_id *)
  plan : azurerm_log_analytics_solution__plan list;
  timeouts : azurerm_log_analytics_solution__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_solution *)

let azurerm_log_analytics_solution ?tags ?timeouts ~location
    ~resource_group_name ~solution_name ~workspace_name
    ~workspace_resource_id ~plan __resource_id =
  let __resource_type = "azurerm_log_analytics_solution" in
  let __resource =
    {
      location;
      resource_group_name;
      solution_name;
      tags;
      workspace_name;
      workspace_resource_id;
      plan;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_solution __resource);
  ()
