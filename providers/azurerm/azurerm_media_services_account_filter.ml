(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type presentation_time_range = {
  end_in_units : float prop option; [@option]
  force_end : bool prop option; [@option]
  live_backoff_in_units : float prop option; [@option]
  presentation_window_in_units : float prop option; [@option]
  start_in_units : float prop option; [@option]
  unit_timescale_in_milliseconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : presentation_time_range) -> ()

let yojson_of_presentation_time_range =
  (function
   | {
       end_in_units = v_end_in_units;
       force_end = v_force_end;
       live_backoff_in_units = v_live_backoff_in_units;
       presentation_window_in_units = v_presentation_window_in_units;
       start_in_units = v_start_in_units;
       unit_timescale_in_milliseconds =
         v_unit_timescale_in_milliseconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_unit_timescale_in_milliseconds
         in
         ("unit_timescale_in_milliseconds", arg) :: bnds
       in
       let bnds =
         match v_start_in_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "start_in_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_presentation_window_in_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "presentation_window_in_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_live_backoff_in_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "live_backoff_in_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_end with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_end", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_in_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "end_in_units", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : presentation_time_range -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_presentation_time_range

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

type track_selection__condition = {
  operation : string prop;
  property : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : track_selection__condition) -> ()

let yojson_of_track_selection__condition =
  (function
   | {
       operation = v_operation;
       property = v_property;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_property in
         ("property", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operation in
         ("operation", arg) :: bnds
       in
       `Assoc bnds
    : track_selection__condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_track_selection__condition

[@@@deriving.end]

type track_selection = {
  condition : track_selection__condition list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : track_selection) -> ()

let yojson_of_track_selection =
  (function
   | { condition = v_condition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_track_selection__condition
             v_condition
         in
         ("condition", arg) :: bnds
       in
       `Assoc bnds
    : track_selection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_track_selection

[@@@deriving.end]

type azurerm_media_services_account_filter = {
  first_quality_bitrate : float prop option; [@option]
  id : string prop option; [@option]
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  presentation_time_range : presentation_time_range list;
  timeouts : timeouts option;
  track_selection : track_selection list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_media_services_account_filter) -> ()

let yojson_of_azurerm_media_services_account_filter =
  (function
   | {
       first_quality_bitrate = v_first_quality_bitrate;
       id = v_id;
       media_services_account_name = v_media_services_account_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       presentation_time_range = v_presentation_time_range;
       timeouts = v_timeouts;
       track_selection = v_track_selection;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_track_selection v_track_selection
         in
         ("track_selection", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_presentation_time_range
             v_presentation_time_range
         in
         ("presentation_time_range", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_media_services_account_name
         in
         ("media_services_account_name", arg) :: bnds
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
         match v_first_quality_bitrate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "first_quality_bitrate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_media_services_account_filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_media_services_account_filter

[@@@deriving.end]

let presentation_time_range ?end_in_units ?force_end
    ?live_backoff_in_units ?presentation_window_in_units
    ?start_in_units ~unit_timescale_in_milliseconds () :
    presentation_time_range =
  {
    end_in_units;
    force_end;
    live_backoff_in_units;
    presentation_window_in_units;
    start_in_units;
    unit_timescale_in_milliseconds;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let track_selection__condition ~operation ~property ~value () :
    track_selection__condition =
  { operation; property; value }

let track_selection ~condition () : track_selection = { condition }

let azurerm_media_services_account_filter ?first_quality_bitrate ?id
    ?(presentation_time_range = []) ?timeouts ?(track_selection = [])
    ~media_services_account_name ~name ~resource_group_name () :
    azurerm_media_services_account_filter =
  {
    first_quality_bitrate;
    id;
    media_services_account_name;
    name;
    resource_group_name;
    presentation_time_range;
    timeouts;
    track_selection;
  }

type t = {
  first_quality_bitrate : float prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?first_quality_bitrate ?id ?(presentation_time_range = [])
    ?timeouts ?(track_selection = []) ~media_services_account_name
    ~name ~resource_group_name __id =
  let __type = "azurerm_media_services_account_filter" in
  let __attrs =
    ({
       first_quality_bitrate =
         Prop.computed __type __id "first_quality_bitrate";
       id = Prop.computed __type __id "id";
       media_services_account_name =
         Prop.computed __type __id "media_services_account_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_media_services_account_filter
        (azurerm_media_services_account_filter ?first_quality_bitrate
           ?id ~presentation_time_range ?timeouts ~track_selection
           ~media_services_account_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?first_quality_bitrate ?id
    ?(presentation_time_range = []) ?timeouts ?(track_selection = [])
    ~media_services_account_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?first_quality_bitrate ?id ~presentation_time_range
      ?timeouts ~track_selection ~media_services_account_name ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
