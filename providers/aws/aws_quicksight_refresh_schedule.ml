(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type schedule__schedule_frequency__refresh_on_day = {
  day_of_month: string  prop option; [@option] (** day_of_month *)
  day_of_week: string  prop option; [@option] (** day_of_week *)
} [@@deriving yojson_of]
(** schedule__schedule_frequency__refresh_on_day *)

type schedule__schedule_frequency = {
  interval: string prop;  (** interval *)
  time_of_the_day: string  prop option; [@option] (** time_of_the_day *)
  timezone: string  prop option; [@option] (** timezone *)
  refresh_on_day: schedule__schedule_frequency__refresh_on_day list;
} [@@deriving yojson_of]
(** schedule__schedule_frequency *)

type schedule = {
  refresh_type: string prop;  (** refresh_type *)
  start_after_date_time: string  prop option; [@option] (** start_after_date_time *)
  schedule_frequency: schedule__schedule_frequency list;
} [@@deriving yojson_of]
(** schedule *)

type aws_quicksight_refresh_schedule = {
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  data_set_id: string prop;  (** data_set_id *)
  schedule_id: string prop;  (** schedule_id *)
  schedule: schedule list;
} [@@deriving yojson_of]
(** aws_quicksight_refresh_schedule *)

let schedule__schedule_frequency__refresh_on_day ?day_of_month ?day_of_week () =
  ({
    day_of_month;
    day_of_week;
  } : schedule__schedule_frequency__refresh_on_day);;

let schedule__schedule_frequency ?time_of_the_day ?timezone ~interval ~refresh_on_day () =
  ({
    interval;
    time_of_the_day;
    timezone;
    refresh_on_day;
  } : schedule__schedule_frequency);;

let schedule ?start_after_date_time ~refresh_type ~schedule_frequency () =
  ({
    refresh_type;
    start_after_date_time;
    schedule_frequency;
  } : schedule);;

let aws_quicksight_refresh_schedule ?aws_account_id ~data_set_id ~schedule_id ~schedule () =
  ({
    aws_account_id;
    data_set_id;
    schedule_id;
    schedule;
  } : aws_quicksight_refresh_schedule);;

type t = {
  arn: string prop;
  aws_account_id: string prop;
  data_set_id: string prop;
  id: string prop;
  schedule_id: string prop;
}

let make ?aws_account_id ~data_set_id ~schedule_id ~schedule __id =
  let __type = "aws_quicksight_refresh_schedule" in
  let __attrs = ({
    arn = Prop.computed __type __id "arn";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    data_set_id = Prop.computed __type __id "data_set_id";
    id = Prop.computed __type __id "id";
    schedule_id = Prop.computed __type __id "schedule_id";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_refresh_schedule (aws_quicksight_refresh_schedule ?aws_account_id ~data_set_id ~schedule_id ~schedule ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ~data_set_id ~schedule_id ~schedule __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ~data_set_id ~schedule_id ~schedule __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

