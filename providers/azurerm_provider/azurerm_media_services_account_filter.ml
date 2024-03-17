(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_services_account_filter__presentation_time_range = {
  end_in_units : float prop option; [@option]  (** end_in_units *)
  force_end : bool prop option; [@option]  (** force_end *)
  live_backoff_in_units : float prop option; [@option]
      (** live_backoff_in_units *)
  presentation_window_in_units : float prop option; [@option]
      (** presentation_window_in_units *)
  start_in_units : float prop option; [@option]
      (** start_in_units *)
  unit_timescale_in_milliseconds : float prop;
      (** unit_timescale_in_milliseconds *)
}
[@@deriving yojson_of]
(** azurerm_media_services_account_filter__presentation_time_range *)

type azurerm_media_services_account_filter__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_services_account_filter__timeouts *)

type azurerm_media_services_account_filter__track_selection__condition = {
  operation : string prop;  (** operation *)
  property : string prop;  (** property *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_media_services_account_filter__track_selection__condition *)

type azurerm_media_services_account_filter__track_selection = {
  condition :
    azurerm_media_services_account_filter__track_selection__condition
    list;
}
[@@deriving yojson_of]
(** azurerm_media_services_account_filter__track_selection *)

type azurerm_media_services_account_filter = {
  first_quality_bitrate : float prop option; [@option]
      (** first_quality_bitrate *)
  id : string prop option; [@option]  (** id *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  presentation_time_range :
    azurerm_media_services_account_filter__presentation_time_range
    list;
  timeouts : azurerm_media_services_account_filter__timeouts option;
  track_selection :
    azurerm_media_services_account_filter__track_selection list;
}
[@@deriving yojson_of]
(** azurerm_media_services_account_filter *)

let azurerm_media_services_account_filter ?first_quality_bitrate ?id
    ?timeouts ~media_services_account_name ~name ~resource_group_name
    ~presentation_time_range ~track_selection __resource_id =
  let __resource_type = "azurerm_media_services_account_filter" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_services_account_filter __resource);
  ()
