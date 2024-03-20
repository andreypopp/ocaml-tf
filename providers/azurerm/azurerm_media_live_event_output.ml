(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_media_live_event_output = {
  archive_window_duration : string prop;
      (** archive_window_duration *)
  asset_name : string prop;  (** asset_name *)
  description : string prop option; [@option]  (** description *)
  hls_fragments_per_ts_segment : float prop option; [@option]
      (** hls_fragments_per_ts_segment *)
  id : string prop option; [@option]  (** id *)
  live_event_id : string prop;  (** live_event_id *)
  manifest_name : string prop option; [@option]  (** manifest_name *)
  name : string prop;  (** name *)
  output_snap_time_in_seconds : float prop option; [@option]
      (** output_snap_time_in_seconds *)
  rewind_window_duration : string prop option; [@option]
      (** rewind_window_duration *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_live_event_output *)

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
