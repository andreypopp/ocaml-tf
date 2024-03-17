(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_refresh_schedule__schedule__schedule_frequency__refresh_on_day = {
  day_of_month : string prop option; [@option]  (** day_of_month *)
  day_of_week : string prop option; [@option]  (** day_of_week *)
}
[@@deriving yojson_of]
(** aws_quicksight_refresh_schedule__schedule__schedule_frequency__refresh_on_day *)

type aws_quicksight_refresh_schedule__schedule__schedule_frequency = {
  interval : string prop;  (** interval *)
  time_of_the_day : string prop option; [@option]
      (** time_of_the_day *)
  timezone : string prop option; [@option]  (** timezone *)
  refresh_on_day :
    aws_quicksight_refresh_schedule__schedule__schedule_frequency__refresh_on_day
    list;
}
[@@deriving yojson_of]
(** aws_quicksight_refresh_schedule__schedule__schedule_frequency *)

type aws_quicksight_refresh_schedule__schedule = {
  refresh_type : string prop;  (** refresh_type *)
  start_after_date_time : string prop option; [@option]
      (** start_after_date_time *)
  schedule_frequency :
    aws_quicksight_refresh_schedule__schedule__schedule_frequency
    list;
}
[@@deriving yojson_of]
(** aws_quicksight_refresh_schedule__schedule *)

type aws_quicksight_refresh_schedule = {
  aws_account_id : string prop option; [@option]
      (** aws_account_id *)
  data_set_id : string prop;  (** data_set_id *)
  schedule_id : string prop;  (** schedule_id *)
  schedule : aws_quicksight_refresh_schedule__schedule list;
}
[@@deriving yojson_of]
(** aws_quicksight_refresh_schedule *)

type t = {
  arn : string prop;
  aws_account_id : string prop;
  data_set_id : string prop;
  id : string prop;
  schedule_id : string prop;
}

let aws_quicksight_refresh_schedule ?aws_account_id ~data_set_id
    ~schedule_id ~schedule __resource_id =
  let __resource_type = "aws_quicksight_refresh_schedule" in
  let __resource =
    ({ aws_account_id; data_set_id; schedule_id; schedule }
      : aws_quicksight_refresh_schedule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_refresh_schedule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       aws_account_id =
         Prop.computed __resource_type __resource_id "aws_account_id";
       data_set_id =
         Prop.computed __resource_type __resource_id "data_set_id";
       id = Prop.computed __resource_type __resource_id "id";
       schedule_id =
         Prop.computed __resource_type __resource_id "schedule_id";
     }
      : t)
  in
  __resource_attributes
