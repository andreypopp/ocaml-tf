(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_asset_filter__presentation_time_range = {
  end_in_units : float option; [@option]  (** end_in_units *)
  force_end : bool option; [@option]  (** force_end *)
  live_backoff_in_units : float option; [@option]
      (** live_backoff_in_units *)
  presentation_window_in_units : float option; [@option]
      (** presentation_window_in_units *)
  start_in_units : float option; [@option]  (** start_in_units *)
  unit_timescale_in_miliseconds : float option; [@option]
      (** unit_timescale_in_miliseconds *)
}
[@@deriving yojson_of]
(** azurerm_media_asset_filter__presentation_time_range *)

type azurerm_media_asset_filter__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_asset_filter__timeouts *)

type azurerm_media_asset_filter__track_selection__condition = {
  operation : string option; [@option]  (** operation *)
  property : string option; [@option]  (** property *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_media_asset_filter__track_selection__condition *)

type azurerm_media_asset_filter__track_selection = {
  condition :
    azurerm_media_asset_filter__track_selection__condition list;
}
[@@deriving yojson_of]
(** azurerm_media_asset_filter__track_selection *)

type azurerm_media_asset_filter = {
  asset_id : string;  (** asset_id *)
  first_quality_bitrate : float option; [@option]
      (** first_quality_bitrate *)
  name : string;  (** name *)
  presentation_time_range :
    azurerm_media_asset_filter__presentation_time_range list;
  timeouts : azurerm_media_asset_filter__timeouts option;
  track_selection : azurerm_media_asset_filter__track_selection list;
}
[@@deriving yojson_of]
(** azurerm_media_asset_filter *)

let azurerm_media_asset_filter ?first_quality_bitrate ?timeouts
    ~asset_id ~name ~presentation_time_range ~track_selection
    __resource_id =
  let __resource_type = "azurerm_media_asset_filter" in
  let __resource =
    {
      asset_id;
      first_quality_bitrate;
      name;
      presentation_time_range;
      timeouts;
      track_selection;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_asset_filter __resource);
  ()
