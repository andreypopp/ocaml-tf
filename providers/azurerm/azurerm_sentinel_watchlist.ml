(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_watchlist *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_sentinel_watchlist ?default_duration ?description ?id
    ?labels ?timeouts ~display_name ~item_search_key
    ~log_analytics_workspace_id ~name () : azurerm_sentinel_watchlist
    =
  {
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

let make ?default_duration ?description ?id ?labels ?timeouts
    ~display_name ~item_search_key ~log_analytics_workspace_id ~name
    __id =
  let __type = "azurerm_sentinel_watchlist" in
  let __attrs =
    ({
       default_duration =
         Prop.computed __type __id "default_duration";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       item_search_key = Prop.computed __type __id "item_search_key";
       labels = Prop.computed __type __id "labels";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_watchlist
        (azurerm_sentinel_watchlist ?default_duration ?description
           ?id ?labels ?timeouts ~display_name ~item_search_key
           ~log_analytics_workspace_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?default_duration ?description ?id ?labels
    ?timeouts ~display_name ~item_search_key
    ~log_analytics_workspace_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?default_duration ?description ?id ?labels ?timeouts
      ~display_name ~item_search_key ~log_analytics_workspace_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
