(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_solution__plan = {
  name : string prop;  (** name *)
  product : string prop;  (** product *)
  promotion_code : string prop option; [@option]
      (** promotion_code *)
  publisher : string prop;  (** publisher *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_solution__plan *)

type azurerm_log_analytics_solution__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_solution__timeouts *)

type azurerm_log_analytics_solution = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  solution_name : string prop;  (** solution_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workspace_name : string prop;  (** workspace_name *)
  workspace_resource_id : string prop;  (** workspace_resource_id *)
  plan : azurerm_log_analytics_solution__plan list;
  timeouts : azurerm_log_analytics_solution__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_solution *)

let azurerm_log_analytics_solution ?id ?tags ?timeouts ~location
    ~resource_group_name ~solution_name ~workspace_name
    ~workspace_resource_id ~plan __resource_id =
  let __resource_type = "azurerm_log_analytics_solution" in
  let __resource =
    {
      id;
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
