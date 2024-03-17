(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssmcontacts_rotation__recurrence__daily_settings = {
  hour_of_day : float;  (** hour_of_day *)
  minute_of_hour : float;  (** minute_of_hour *)
}
[@@deriving yojson_of]
(** aws_ssmcontacts_rotation__recurrence__daily_settings *)

type aws_ssmcontacts_rotation__recurrence__monthly_settings__hand_off_time = {
  hour_of_day : float;  (** hour_of_day *)
  minute_of_hour : float;  (** minute_of_hour *)
}
[@@deriving yojson_of]
(** aws_ssmcontacts_rotation__recurrence__monthly_settings__hand_off_time *)

type aws_ssmcontacts_rotation__recurrence__monthly_settings = {
  day_of_month : float;  (** day_of_month *)
  hand_off_time :
    aws_ssmcontacts_rotation__recurrence__monthly_settings__hand_off_time
    list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_rotation__recurrence__monthly_settings *)

type aws_ssmcontacts_rotation__recurrence__shift_coverages__coverage_times__end = {
  hour_of_day : float;  (** hour_of_day *)
  minute_of_hour : float;  (** minute_of_hour *)
}
[@@deriving yojson_of]
(** aws_ssmcontacts_rotation__recurrence__shift_coverages__coverage_times__end *)

type aws_ssmcontacts_rotation__recurrence__shift_coverages__coverage_times__start = {
  hour_of_day : float;  (** hour_of_day *)
  minute_of_hour : float;  (** minute_of_hour *)
}
[@@deriving yojson_of]
(** aws_ssmcontacts_rotation__recurrence__shift_coverages__coverage_times__start *)

type aws_ssmcontacts_rotation__recurrence__shift_coverages__coverage_times = {
  end_ :
    aws_ssmcontacts_rotation__recurrence__shift_coverages__coverage_times__end
    list;
  start :
    aws_ssmcontacts_rotation__recurrence__shift_coverages__coverage_times__start
    list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_rotation__recurrence__shift_coverages__coverage_times *)

type aws_ssmcontacts_rotation__recurrence__shift_coverages = {
  map_block_key : string;  (** map_block_key *)
  coverage_times :
    aws_ssmcontacts_rotation__recurrence__shift_coverages__coverage_times
    list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_rotation__recurrence__shift_coverages *)

type aws_ssmcontacts_rotation__recurrence__weekly_settings__hand_off_time = {
  hour_of_day : float;  (** hour_of_day *)
  minute_of_hour : float;  (** minute_of_hour *)
}
[@@deriving yojson_of]
(** aws_ssmcontacts_rotation__recurrence__weekly_settings__hand_off_time *)

type aws_ssmcontacts_rotation__recurrence__weekly_settings = {
  day_of_week : string;  (** day_of_week *)
  hand_off_time :
    aws_ssmcontacts_rotation__recurrence__weekly_settings__hand_off_time
    list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_rotation__recurrence__weekly_settings *)

type aws_ssmcontacts_rotation__recurrence = {
  number_of_on_calls : float;  (** number_of_on_calls *)
  recurrence_multiplier : float;  (** recurrence_multiplier *)
  daily_settings :
    aws_ssmcontacts_rotation__recurrence__daily_settings list;
  monthly_settings :
    aws_ssmcontacts_rotation__recurrence__monthly_settings list;
  shift_coverages :
    aws_ssmcontacts_rotation__recurrence__shift_coverages list;
  weekly_settings :
    aws_ssmcontacts_rotation__recurrence__weekly_settings list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_rotation__recurrence *)

type aws_ssmcontacts_rotation = {
  contact_ids : string list;  (** contact_ids *)
  name : string;  (** name *)
  start_time : string option; [@option]  (** start_time *)
  tags : (string * string) list option; [@option]  (** tags *)
  time_zone_id : string;  (** time_zone_id *)
  recurrence : aws_ssmcontacts_rotation__recurrence list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_rotation *)

let aws_ssmcontacts_rotation ?start_time ?tags ~contact_ids ~name
    ~time_zone_id ~recurrence __resource_id =
  let __resource_type = "aws_ssmcontacts_rotation" in
  let __resource =
    { contact_ids; name; start_time; tags; time_zone_id; recurrence }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssmcontacts_rotation __resource);
  ()
