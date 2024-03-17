(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_live_event_output__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_media_live_event_output__timeouts *)

type azurerm_media_live_event_output = {
  archive_window_duration : string;  (** archive_window_duration *)
  asset_name : string;  (** asset_name *)
  description : string option; [@option]  (** description *)
  hls_fragments_per_ts_segment : float option; [@option]
      (** hls_fragments_per_ts_segment *)
  live_event_id : string;  (** live_event_id *)
  name : string;  (** name *)
  output_snap_time_in_seconds : float option; [@option]
      (** output_snap_time_in_seconds *)
  rewind_window_duration : string option; [@option]
      (** rewind_window_duration *)
  timeouts : azurerm_media_live_event_output__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_live_event_output *)

let azurerm_media_live_event_output ?description
    ?hls_fragments_per_ts_segment ?output_snap_time_in_seconds
    ?rewind_window_duration ?timeouts ~archive_window_duration
    ~asset_name ~live_event_id ~name __resource_id =
  let __resource_type = "azurerm_media_live_event_output" in
  let __resource =
    {
      archive_window_duration;
      asset_name;
      description;
      hls_fragments_per_ts_segment;
      live_event_id;
      name;
      output_snap_time_in_seconds;
      rewind_window_duration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_live_event_output __resource);
  ()
