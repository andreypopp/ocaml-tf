(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_sentinel_watchlist__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_watchlist__timeouts *)

type azurerm_sentinel_watchlist = {
  default_duration : string option; [@option]
      (** default_duration *)
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  item_search_key : string;  (** item_search_key *)
  labels : string list option; [@option]  (** labels *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  timeouts : azurerm_sentinel_watchlist__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_watchlist *)

let azurerm_sentinel_watchlist ?default_duration ?description ?labels
    ?timeouts ~display_name ~item_search_key
    ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type = "azurerm_sentinel_watchlist" in
  let __resource =
    {
      default_duration;
      description;
      display_name;
      item_search_key;
      labels;
      log_analytics_workspace_id;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_watchlist __resource);
  ()
