(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type presentation_time_range = {
  end_in_units : float prop option; [@option]  (** end_in_units *)
  force_end : bool prop option; [@option]  (** force_end *)
  live_backoff_in_units : float prop option; [@option]
      (** live_backoff_in_units *)
  presentation_window_in_units : float prop option; [@option]
      (** presentation_window_in_units *)
  start_in_units : float prop option; [@option]
      (** start_in_units *)
  unit_timescale_in_miliseconds : float prop option; [@option]
      (** unit_timescale_in_miliseconds *)
}
[@@deriving yojson_of]
(** presentation_time_range *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type track_selection__condition = {
  operation : string prop option; [@option]  (** operation *)
  property : string prop option; [@option]  (** property *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** track_selection__condition *)

type track_selection = {
  condition : track_selection__condition list;
}
[@@deriving yojson_of]
(** track_selection *)

type azurerm_media_asset_filter = {
  asset_id : string prop;  (** asset_id *)
  first_quality_bitrate : float prop option; [@option]
      (** first_quality_bitrate *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  presentation_time_range : presentation_time_range list;
  timeouts : timeouts option;
  track_selection : track_selection list;
}
[@@deriving yojson_of]
(** azurerm_media_asset_filter *)

let presentation_time_range ?end_in_units ?force_end
    ?live_backoff_in_units ?presentation_window_in_units
    ?start_in_units ?unit_timescale_in_miliseconds () :
    presentation_time_range =
  {
    end_in_units;
    force_end;
    live_backoff_in_units;
    presentation_window_in_units;
    start_in_units;
    unit_timescale_in_miliseconds;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let track_selection__condition ?operation ?property ?value () :
    track_selection__condition =
  { operation; property; value }

let track_selection ~condition () : track_selection = { condition }

let azurerm_media_asset_filter ?first_quality_bitrate ?id ?timeouts
    ~asset_id ~name ~presentation_time_range ~track_selection () :
    azurerm_media_asset_filter =
  {
    asset_id;
    first_quality_bitrate;
    id;
    name;
    presentation_time_range;
    timeouts;
    track_selection;
  }

type t = {
  asset_id : string prop;
  first_quality_bitrate : float prop;
  id : string prop;
  name : string prop;
}

let register ?tf_module ?first_quality_bitrate ?id ?timeouts
    ~asset_id ~name ~presentation_time_range ~track_selection
    __resource_id =
  let __resource_type = "azurerm_media_asset_filter" in
  let __resource =
    azurerm_media_asset_filter ?first_quality_bitrate ?id ?timeouts
      ~asset_id ~name ~presentation_time_range ~track_selection ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_asset_filter __resource);
  let __resource_attributes =
    ({
       asset_id =
         Prop.computed __resource_type __resource_id "asset_id";
       first_quality_bitrate =
         Prop.computed __resource_type __resource_id
           "first_quality_bitrate";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
