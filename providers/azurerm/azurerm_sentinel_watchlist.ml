(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_sentinel_watchlist = {
  default_duration : string prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  item_search_key : string prop;
  labels : string prop list option; [@option]
  log_analytics_workspace_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sentinel_watchlist) -> ()

let yojson_of_azurerm_sentinel_watchlist =
  (function
   | {
       default_duration = v_default_duration;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       item_search_key = v_item_search_key;
       labels = v_labels;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       name = v_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_log_analytics_workspace_id
         in
         ("log_analytics_workspace_id", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_item_search_key
         in
         ("item_search_key", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_watchlist -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sentinel_watchlist

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
