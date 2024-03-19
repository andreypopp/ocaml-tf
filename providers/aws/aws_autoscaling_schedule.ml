(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscaling_schedule = {
  autoscaling_group_name : string prop;
      (** autoscaling_group_name *)
  desired_capacity : float prop option; [@option]
      (** desired_capacity *)
  end_time : string prop option; [@option]  (** end_time *)
  id : string prop option; [@option]  (** id *)
  max_size : float prop option; [@option]  (** max_size *)
  min_size : float prop option; [@option]  (** min_size *)
  recurrence : string prop option; [@option]  (** recurrence *)
  scheduled_action_name : string prop;  (** scheduled_action_name *)
  start_time : string prop option; [@option]  (** start_time *)
  time_zone : string prop option; [@option]  (** time_zone *)
}
[@@deriving yojson_of]
(** aws_autoscaling_schedule *)

let aws_autoscaling_schedule ?desired_capacity ?end_time ?id
    ?max_size ?min_size ?recurrence ?start_time ?time_zone
    ~autoscaling_group_name ~scheduled_action_name () :
    aws_autoscaling_schedule =
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

type t = {
  arn : string prop;
  autoscaling_group_name : string prop;
  desired_capacity : float prop;
  end_time : string prop;
  id : string prop;
  max_size : float prop;
  min_size : float prop;
  recurrence : string prop;
  scheduled_action_name : string prop;
  start_time : string prop;
  time_zone : string prop;
}

let register ?tf_module ?desired_capacity ?end_time ?id ?max_size
    ?min_size ?recurrence ?start_time ?time_zone
    ~autoscaling_group_name ~scheduled_action_name __resource_id =
  let __resource_type = "aws_autoscaling_schedule" in
  let __resource =
    aws_autoscaling_schedule ?desired_capacity ?end_time ?id
      ?max_size ?min_size ?recurrence ?start_time ?time_zone
      ~autoscaling_group_name ~scheduled_action_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_schedule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       autoscaling_group_name =
         Prop.computed __resource_type __resource_id
           "autoscaling_group_name";
       desired_capacity =
         Prop.computed __resource_type __resource_id
           "desired_capacity";
       end_time =
         Prop.computed __resource_type __resource_id "end_time";
       id = Prop.computed __resource_type __resource_id "id";
       max_size =
         Prop.computed __resource_type __resource_id "max_size";
       min_size =
         Prop.computed __resource_type __resource_id "min_size";
       recurrence =
         Prop.computed __resource_type __resource_id "recurrence";
       scheduled_action_name =
         Prop.computed __resource_type __resource_id
           "scheduled_action_name";
       start_time =
         Prop.computed __resource_type __resource_id "start_time";
       time_zone =
         Prop.computed __resource_type __resource_id "time_zone";
     }
      : t)
  in
  __resource_attributes
