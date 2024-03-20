(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type scalable_target_action = {
  max_capacity : string prop option; [@option]  (** max_capacity *)
  min_capacity : string prop option; [@option]  (** min_capacity *)
}
[@@deriving yojson_of]
(** scalable_target_action *)

type aws_appautoscaling_scheduled_action = {
  end_time : string prop option; [@option]  (** end_time *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_id : string prop;  (** resource_id *)
  scalable_dimension : string prop;  (** scalable_dimension *)
  schedule : string prop;  (** schedule *)
  service_namespace : string prop;  (** service_namespace *)
  start_time : string prop option; [@option]  (** start_time *)
  timezone : string prop option; [@option]  (** timezone *)
  scalable_target_action : scalable_target_action list;
}
[@@deriving yojson_of]
(** aws_appautoscaling_scheduled_action *)

let scalable_target_action ?max_capacity ?min_capacity () :
    scalable_target_action =
  { max_capacity; min_capacity }

let aws_appautoscaling_scheduled_action ?end_time ?id ?start_time
    ?timezone ~name ~resource_id ~scalable_dimension ~schedule
    ~service_namespace ~scalable_target_action () :
    aws_appautoscaling_scheduled_action =
  {
    end_time;
    id;
    name;
    resource_id;
    scalable_dimension;
    schedule;
    service_namespace;
    start_time;
    timezone;
    scalable_target_action;
  }

type t = {
  arn : string prop;
  end_time : string prop;
  id : string prop;
  name : string prop;
  resource_id : string prop;
  scalable_dimension : string prop;
  schedule : string prop;
  service_namespace : string prop;
  start_time : string prop;
  timezone : string prop;
}

let make ?end_time ?id ?start_time ?timezone ~name ~resource_id
    ~scalable_dimension ~schedule ~service_namespace
    ~scalable_target_action __id =
  let __type = "aws_appautoscaling_scheduled_action" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       end_time = Prop.computed __type __id "end_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_id = Prop.computed __type __id "resource_id";
       scalable_dimension =
         Prop.computed __type __id "scalable_dimension";
       schedule = Prop.computed __type __id "schedule";
       service_namespace =
         Prop.computed __type __id "service_namespace";
       start_time = Prop.computed __type __id "start_time";
       timezone = Prop.computed __type __id "timezone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appautoscaling_scheduled_action
        (aws_appautoscaling_scheduled_action ?end_time ?id
           ?start_time ?timezone ~name ~resource_id
           ~scalable_dimension ~schedule ~service_namespace
           ~scalable_target_action ());
    attrs = __attrs;
  }

let register ?tf_module ?end_time ?id ?start_time ?timezone ~name
    ~resource_id ~scalable_dimension ~schedule ~service_namespace
    ~scalable_target_action __id =
  let (r : _ Tf_core.resource) =
    make ?end_time ?id ?start_time ?timezone ~name ~resource_id
      ~scalable_dimension ~schedule ~service_namespace
      ~scalable_target_action __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
