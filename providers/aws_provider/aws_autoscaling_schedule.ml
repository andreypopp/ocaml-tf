(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscaling_schedule = {
  autoscaling_group_name : string;  (** autoscaling_group_name *)
  desired_capacity : float option; [@option]  (** desired_capacity *)
  end_time : string option; [@option]  (** end_time *)
  id : string option; [@option]  (** id *)
  max_size : float option; [@option]  (** max_size *)
  min_size : float option; [@option]  (** min_size *)
  recurrence : string option; [@option]  (** recurrence *)
  scheduled_action_name : string;  (** scheduled_action_name *)
  start_time : string option; [@option]  (** start_time *)
  time_zone : string option; [@option]  (** time_zone *)
}
[@@deriving yojson_of]
(** aws_autoscaling_schedule *)

let aws_autoscaling_schedule ?desired_capacity ?end_time ?id
    ?max_size ?min_size ?recurrence ?start_time ?time_zone
    ~autoscaling_group_name ~scheduled_action_name __resource_id =
  let __resource_type = "aws_autoscaling_schedule" in
  let __resource =
    {
      autoscaling_group_name;
      desired_capacity;
      end_time;
      id;
      max_size;
      min_size;
      recurrence;
      scheduled_action_name;
      start_time;
      time_zone;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_schedule __resource);
  ()
