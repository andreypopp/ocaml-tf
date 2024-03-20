(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type targeting_filter__groups = {
  name : string prop;
  rollout_percentage : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targeting_filter__groups) -> ()

let yojson_of_targeting_filter__groups =
  (function
   | { name = v_name; rollout_percentage = v_rollout_percentage } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_rollout_percentage
         in
         ("rollout_percentage", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : targeting_filter__groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targeting_filter__groups

[@@@deriving.end]

type targeting_filter = {
  default_rollout_percentage : float prop;
  users : string prop list option; [@option]
  groups : targeting_filter__groups list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targeting_filter) -> ()

let yojson_of_targeting_filter =
  (function
   | {
       default_rollout_percentage = v_default_rollout_percentage;
       users = v_users;
       groups = v_groups;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_targeting_filter__groups v_groups
         in
         ("groups", arg) :: bnds
       in
       let bnds =
         match v_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "users", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_default_rollout_percentage
         in
         ("default_rollout_percentage", arg) :: bnds
       in
       `Assoc bnds
    : targeting_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targeting_filter

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type timewindow_filter = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timewindow_filter) -> ()

let yojson_of_timewindow_filter =
  (function
   | { end_ = v_end_; start = v_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timewindow_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timewindow_filter

[@@@deriving.end]

type azurerm_app_configuration_feature = {
  configuration_store_id : string prop;
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  etag : string prop option; [@option]
  id : string prop option; [@option]
  key : string prop option; [@option]
  label : string prop option; [@option]
  locked : bool prop option; [@option]
  name : string prop;
  percentage_filter_value : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  targeting_filter : targeting_filter list;
  timeouts : timeouts option;
  timewindow_filter : timewindow_filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_configuration_feature) -> ()

let yojson_of_azurerm_app_configuration_feature =
  (function
   | {
       configuration_store_id = v_configuration_store_id;
       description = v_description;
       enabled = v_enabled;
       etag = v_etag;
       id = v_id;
       key = v_key;
       label = v_label;
       locked = v_locked;
       name = v_name;
       percentage_filter_value = v_percentage_filter_value;
       tags = v_tags;
       targeting_filter = v_targeting_filter;
       timeouts = v_timeouts;
       timewindow_filter = v_timewindow_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_timewindow_filter
             v_timewindow_filter
         in
         ("timewindow_filter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_targeting_filter
             v_targeting_filter
         in
         ("targeting_filter", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_percentage_filter_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percentage_filter_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_locked with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "locked", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
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
         match v_etag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "etag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_configuration_store_id
         in
         ("configuration_store_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_app_configuration_feature ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_configuration_feature

[@@@deriving.end]

let targeting_filter__groups ~name ~rollout_percentage () :
    targeting_filter__groups =
  { name; rollout_percentage }

let targeting_filter ?users ~default_rollout_percentage ~groups () :
    targeting_filter =
  { default_rollout_percentage; users; groups }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let timewindow_filter ?end_ ?start () : timewindow_filter =
  { end_; start }

let azurerm_app_configuration_feature ?description ?enabled ?etag ?id
    ?key ?label ?locked ?percentage_filter_value ?tags ?timeouts
    ~configuration_store_id ~name ~targeting_filter
    ~timewindow_filter () : azurerm_app_configuration_feature =
  {
    configuration_store_id;
    description;
    enabled;
    etag;
    id;
    key;
    label;
    locked;
    name;
    percentage_filter_value;
    tags;
    targeting_filter;
    timeouts;
    timewindow_filter;
  }

type t = {
  configuration_store_id : string prop;
  description : string prop;
  enabled : bool prop;
  etag : string prop;
  id : string prop;
  key : string prop;
  label : string prop;
  locked : bool prop;
  name : string prop;
  percentage_filter_value : float prop;
  tags : (string * string) list prop;
}

let make ?description ?enabled ?etag ?id ?key ?label ?locked
    ?percentage_filter_value ?tags ?timeouts ~configuration_store_id
    ~name ~targeting_filter ~timewindow_filter __id =
  let __type = "azurerm_app_configuration_feature" in
  let __attrs =
    ({
       configuration_store_id =
         Prop.computed __type __id "configuration_store_id";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       label = Prop.computed __type __id "label";
       locked = Prop.computed __type __id "locked";
       name = Prop.computed __type __id "name";
       percentage_filter_value =
         Prop.computed __type __id "percentage_filter_value";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_configuration_feature
        (azurerm_app_configuration_feature ?description ?enabled
           ?etag ?id ?key ?label ?locked ?percentage_filter_value
           ?tags ?timeouts ~configuration_store_id ~name
           ~targeting_filter ~timewindow_filter ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?etag ?id ?key ?label
    ?locked ?percentage_filter_value ?tags ?timeouts
    ~configuration_store_id ~name ~targeting_filter
    ~timewindow_filter __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?etag ?id ?key ?label ?locked
      ?percentage_filter_value ?tags ?timeouts
      ~configuration_store_id ~name ~targeting_filter
      ~timewindow_filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
