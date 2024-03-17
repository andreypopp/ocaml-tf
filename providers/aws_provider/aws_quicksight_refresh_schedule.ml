(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_refresh_schedule__schedule__schedule_frequency__refresh_on_day = {
  day_of_month: string option; [@option] (** day_of_month *)
  day_of_week: string option; [@option] (** day_of_week *)
} [@@deriving yojson_of]
(** aws_quicksight_refresh_schedule__schedule__schedule_frequency__refresh_on_day *)

type aws_quicksight_refresh_schedule__schedule__schedule_frequency = {
  interval: string;  (** interval *)
  time_of_the_day: string option; [@option] (** time_of_the_day *)
  timezone: string option; [@option] (** timezone *)
  refresh_on_day: aws_quicksight_refresh_schedule__schedule__schedule_frequency__refresh_on_day list;
} [@@deriving yojson_of]
(** aws_quicksight_refresh_schedule__schedule__schedule_frequency *)

type aws_quicksight_refresh_schedule__schedule = {
  refresh_type: string;  (** refresh_type *)
  start_after_date_time: string option; [@option] (** start_after_date_time *)
  schedule_frequency: aws_quicksight_refresh_schedule__schedule__schedule_frequency list;
} [@@deriving yojson_of]
(** aws_quicksight_refresh_schedule__schedule *)

type aws_quicksight_refresh_schedule = {
  data_set_id: string;  (** data_set_id *)
  schedule_id: string;  (** schedule_id *)
  schedule: aws_quicksight_refresh_schedule__schedule list;
} [@@deriving yojson_of]
(** aws_quicksight_refresh_schedule *)

let aws_quicksight_refresh_schedule   ~data_set_id ~schedule_id ~schedule __resource_id =
  let __resource_type = "aws_quicksight_refresh_schedule" in
  let __resource = {
    data_set_id;
    schedule_id;
    schedule;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_refresh_schedule __resource);
  ()
  ;;

