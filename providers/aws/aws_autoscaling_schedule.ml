(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_autoscaling_schedule = {
  autoscaling_group_name : string prop;
  desired_capacity : float prop option; [@option]
  end_time : string prop option; [@option]
  id : string prop option; [@option]
  max_size : float prop option; [@option]
  min_size : float prop option; [@option]
  recurrence : string prop option; [@option]
  scheduled_action_name : string prop;
  start_time : string prop option; [@option]
  time_zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_autoscaling_schedule) -> ()

let yojson_of_aws_autoscaling_schedule =
  (function
   | {
       autoscaling_group_name = v_autoscaling_group_name;
       desired_capacity = v_desired_capacity;
       end_time = v_end_time;
       id = v_id;
       max_size = v_max_size;
       min_size = v_min_size;
       recurrence = v_recurrence;
       scheduled_action_name = v_scheduled_action_name;
       start_time = v_start_time;
       time_zone = v_time_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_scheduled_action_name
         in
         ("scheduled_action_name", arg) :: bnds
       in
       let bnds =
         match v_recurrence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recurrence", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "desired_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_autoscaling_group_name
         in
         ("autoscaling_group_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_autoscaling_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_autoscaling_schedule

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
