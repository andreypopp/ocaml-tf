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

let register ?tf_module ?description ?hls_fragments_per_ts_segment
    ?id ?manifest_name ?output_snap_time_in_seconds
    ?rewind_window_duration ?timeouts ~archive_window_duration
    ~asset_name ~live_event_id ~name __resource_id =
  let __resource_type = "azurerm_media_live_event_output" in
  let __resource =
    azurerm_media_live_event_output ?description
      ?hls_fragments_per_ts_segment ?id ?manifest_name
      ?output_snap_time_in_seconds ?rewind_window_duration ?timeouts
      ~archive_window_duration ~asset_name ~live_event_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_live_event_output __resource);
  let __resource_attributes =
    ({
       archive_window_duration =
         Prop.computed __resource_type __resource_id
           "archive_window_duration";
       asset_name =
         Prop.computed __resource_type __resource_id "asset_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       hls_fragments_per_ts_segment =
         Prop.computed __resource_type __resource_id
           "hls_fragments_per_ts_segment";
       id = Prop.computed __resource_type __resource_id "id";
       live_event_id =
         Prop.computed __resource_type __resource_id "live_event_id";
       manifest_name =
         Prop.computed __resource_type __resource_id "manifest_name";
       name = Prop.computed __resource_type __resource_id "name";
       output_snap_time_in_seconds =
         Prop.computed __resource_type __resource_id
           "output_snap_time_in_seconds";
       rewind_window_duration =
         Prop.computed __resource_type __resource_id
           "rewind_window_duration";
     }
      : t)
  in
  __resource_attributes
