(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_saved_search__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_saved_search__timeouts *)

type azurerm_log_analytics_saved_search = {
  category : string prop;  (** category *)
  display_name : string prop;  (** display_name *)
  function_alias : string prop option; [@option]
      (** function_alias *)
  function_parameters : string prop list option; [@option]
      (** function_parameters *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  query : string prop;  (** query *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_log_analytics_saved_search__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_saved_search *)

let azurerm_log_analytics_saved_search ?function_alias
    ?function_parameters ?id ?tags ?timeouts ~category ~display_name
    ~log_analytics_workspace_id ~name ~query __resource_id =
  let __resource_type = "azurerm_log_analytics_saved_search" in
  let __resource =
    {
      category;
      display_name;
      function_alias;
      function_parameters;
      id;
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
