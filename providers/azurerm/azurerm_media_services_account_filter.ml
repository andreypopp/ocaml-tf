(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type presentation_time_range = {
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
  operation : string prop;  (** operation *)
  property : string prop;  (** property *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** track_selection__condition *)

type track_selection = {
  condition : track_selection__condition list;
}
[@@deriving yojson_of]
(** track_selection *)

type azurerm_media_services_account_filter = {
  first_quality_bitrate : float prop option; [@option]
      (** first_quality_bitrate *)
  id : string prop option; [@option]  (** id *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  presentation_time_range : presentation_time_range list;
  timeouts : timeouts option;
  track_selection : track_selection list;
}
[@@deriving yojson_of]
(** azurerm_media_services_account_filter *)

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
    ?timeouts ~media_services_account_name ~name ~resource_group_name
    ~presentation_time_range ~track_selection () :
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

let make ?first_quality_bitrate ?id ?timeouts
    ~media_services_account_name ~name ~resource_group_name
    ~presentation_time_range ~track_selection __id =
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
           ?id ?timeouts ~media_services_account_name ~name
           ~resource_group_name ~presentation_time_range
           ~track_selection ());
    attrs = __attrs;
  }

let register ?tf_module ?first_quality_bitrate ?id ?timeouts
    ~media_services_account_name ~name ~resource_group_name
    ~presentation_time_range ~track_selection __id =
  let (r : _ Tf_core.resource) =
    make ?first_quality_bitrate ?id ?timeouts
      ~media_services_account_name ~name ~resource_group_name
      ~presentation_time_range ~track_selection __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
