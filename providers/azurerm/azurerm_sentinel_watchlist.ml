(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_watchlist__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_watchlist__timeouts *)

type azurerm_sentinel_watchlist = {
  default_duration : string prop option; [@option]
      (** default_duration *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  item_search_key : string prop;  (** item_search_key *)
  labels : string prop list option; [@option]  (** labels *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  timeouts : azurerm_sentinel_watchlist__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_watchlist *)

type t = {
  default_duration : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  item_search_key : string prop;
  labels : string list prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
}

let azurerm_sentinel_watchlist ?default_duration ?description ?id
    ?labels ?timeouts ~display_name ~item_search_key
    ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type = "azurerm_sentinel_watchlist" in
  let __resource =
    ({
       default_duration;
       description;
       display_name;
       id;
       item_search_key;
       labels;
       log_analytics_workspace_id;
       name;
       timeouts;
     }
      : azurerm_sentinel_watchlist)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_watchlist __resource);
  let __resource_attributes =
    ({
       default_duration =
         Prop.computed __resource_type __resource_id
           "default_duration";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       item_search_key =
         Prop.computed __resource_type __resource_id
           "item_search_key";
       labels = Prop.computed __resource_type __resource_id "labels";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
