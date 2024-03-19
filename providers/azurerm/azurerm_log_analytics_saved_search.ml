(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_saved_search *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_log_analytics_saved_search ?function_alias
    ?function_parameters ?id ?tags ?timeouts ~category ~display_name
    ~log_analytics_workspace_id ~name ~query () :
    azurerm_log_analytics_saved_search =
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

type t = {
  category : string prop;
  display_name : string prop;
  function_alias : string prop;
  function_parameters : string list prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  query : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?function_alias ?function_parameters ?id
    ?tags ?timeouts ~category ~display_name
    ~log_analytics_workspace_id ~name ~query __resource_id =
  let __resource_type = "azurerm_log_analytics_saved_search" in
  let __resource =
    azurerm_log_analytics_saved_search ?function_alias
      ?function_parameters ?id ?tags ?timeouts ~category
      ~display_name ~log_analytics_workspace_id ~name ~query ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_saved_search __resource);
  let __resource_attributes =
    ({
       category =
         Prop.computed __resource_type __resource_id "category";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       function_alias =
         Prop.computed __resource_type __resource_id "function_alias";
       function_parameters =
         Prop.computed __resource_type __resource_id
           "function_parameters";
       id = Prop.computed __resource_type __resource_id "id";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       name = Prop.computed __resource_type __resource_id "name";
       query = Prop.computed __resource_type __resource_id "query";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
