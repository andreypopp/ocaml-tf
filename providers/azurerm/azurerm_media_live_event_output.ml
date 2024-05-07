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

type azurerm_media_live_event_output = {
  archive_window_duration : string prop;
  asset_name : string prop;
  description : string prop option; [@option]
  hls_fragments_per_ts_segment : float prop option; [@option]
  id : string prop option; [@option]
  live_event_id : string prop;
  manifest_name : string prop option; [@option]
  name : string prop;
  output_snap_time_in_seconds : float prop option; [@option]
  rewind_window_duration : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_media_live_event_output) -> ()

let yojson_of_azurerm_media_live_event_output =
  (function
   | {
       archive_window_duration = v_archive_window_duration;
       asset_name = v_asset_name;
       description = v_description;
       hls_fragments_per_ts_segment = v_hls_fragments_per_ts_segment;
       id = v_id;
       live_event_id = v_live_event_id;
       manifest_name = v_manifest_name;
       name = v_name;
       output_snap_time_in_seconds = v_output_snap_time_in_seconds;
       rewind_window_duration = v_rewind_window_duration;
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
         match v_rewind_window_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rewind_window_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_output_snap_time_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "output_snap_time_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_manifest_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manifest_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_live_event_id in
         ("live_event_id", arg) :: bnds
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
         match v_hls_fragments_per_ts_segment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hls_fragments_per_ts_segment", arg in
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
         let arg = yojson_of_prop yojson_of_string v_asset_name in
         ("asset_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_archive_window_duration
         in
         ("archive_window_duration", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_media_live_event_output ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_media_live_event_output

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_media_live_event_output ?description
    ?hls_fragments_per_ts_segment ?id ?manifest_name
    ?output_snap_time_in_seconds ?rewind_window_duration ?timeouts
    ~archive_window_duration ~asset_name ~live_event_id ~name () :
    azurerm_media_live_event_output =
  {
    archive_window_duration;
    asset_name;
    description;
    hls_fragments_per_ts_segment;
    id;
    live_event_id;
    manifest_name;
    name;
    output_snap_time_in_seconds;
    rewind_window_duration;
    timeouts;
  }

type t = {
  tf_name : string;
  archive_window_duration : string prop;
  asset_name : string prop;
  description : string prop;
  hls_fragments_per_ts_segment : float prop;
  id : string prop;
  live_event_id : string prop;
  manifest_name : string prop;
  name : string prop;
  output_snap_time_in_seconds : float prop;
  rewind_window_duration : string prop;
}

let make ?description ?hls_fragments_per_ts_segment ?id
    ?manifest_name ?output_snap_time_in_seconds
    ?rewind_window_duration ?timeouts ~archive_window_duration
    ~asset_name ~live_event_id ~name __id =
  let __type = "azurerm_media_live_event_output" in
  let __attrs =
    ({
       tf_name = __id;
       archive_window_duration =
         Prop.computed __type __id "archive_window_duration";
       asset_name = Prop.computed __type __id "asset_name";
       description = Prop.computed __type __id "description";
       hls_fragments_per_ts_segment =
         Prop.computed __type __id "hls_fragments_per_ts_segment";
       id = Prop.computed __type __id "id";
       live_event_id = Prop.computed __type __id "live_event_id";
       manifest_name = Prop.computed __type __id "manifest_name";
       name = Prop.computed __type __id "name";
       output_snap_time_in_seconds =
         Prop.computed __type __id "output_snap_time_in_seconds";
       rewind_window_duration =
         Prop.computed __type __id "rewind_window_duration";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_media_live_event_output
        (azurerm_media_live_event_output ?description
           ?hls_fragments_per_ts_segment ?id ?manifest_name
           ?output_snap_time_in_seconds ?rewind_window_duration
           ?timeouts ~archive_window_duration ~asset_name
           ~live_event_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?hls_fragments_per_ts_segment
    ?id ?manifest_name ?output_snap_time_in_seconds
    ?rewind_window_duration ?timeouts ~archive_window_duration
    ~asset_name ~live_event_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?hls_fragments_per_ts_segment ?id
      ?manifest_name ?output_snap_time_in_seconds
      ?rewind_window_duration ?timeouts ~archive_window_duration
      ~asset_name ~live_event_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
