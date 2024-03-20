(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?desired_capacity ?end_time ?id ?max_size ?min_size
    ?recurrence ?start_time ?time_zone ~autoscaling_group_name
    ~scheduled_action_name __id =
  let __type = "aws_autoscaling_schedule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       autoscaling_group_name =
         Prop.computed __type __id "autoscaling_group_name";
       desired_capacity =
         Prop.computed __type __id "desired_capacity";
       end_time = Prop.computed __type __id "end_time";
       id = Prop.computed __type __id "id";
       max_size = Prop.computed __type __id "max_size";
       min_size = Prop.computed __type __id "min_size";
       recurrence = Prop.computed __type __id "recurrence";
       scheduled_action_name =
         Prop.computed __type __id "scheduled_action_name";
       start_time = Prop.computed __type __id "start_time";
       time_zone = Prop.computed __type __id "time_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_autoscaling_schedule
        (aws_autoscaling_schedule ?desired_capacity ?end_time ?id
           ?max_size ?min_size ?recurrence ?start_time ?time_zone
           ~autoscaling_group_name ~scheduled_action_name ());
    attrs = __attrs;
  }

let register ?tf_module ?desired_capacity ?end_time ?id ?max_size
    ?min_size ?recurrence ?start_time ?time_zone
    ~autoscaling_group_name ~scheduled_action_name __id =
  let (r : _ Tf_core.resource) =
    make ?desired_capacity ?end_time ?id ?max_size ?min_size
      ?recurrence ?start_time ?time_zone ~autoscaling_group_name
      ~scheduled_action_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
