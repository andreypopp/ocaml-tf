(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_log_analytics_saved_search__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_saved_search__timeouts *)

type azurerm_log_analytics_saved_search = {
  category : string;  (** category *)
  display_name : string;  (** display_name *)
  function_alias : string option; [@option]  (** function_alias *)
  function_parameters : string list option; [@option]
      (** function_parameters *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  query : string;  (** query *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_log_analytics_saved_search__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_saved_search *)

let azurerm_log_analytics_saved_search ?function_alias
    ?function_parameters ?tags ?timeouts ~category ~display_name
    ~log_analytics_workspace_id ~name ~query __resource_id =
  let __resource_type = "azurerm_log_analytics_saved_search" in
  let __resource =
    {
      category;
      display_name;
      function_alias;
      function_parameters;
      log_analytics_workspace_id;
      name;
      query;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_saved_search __resource);
  ()
