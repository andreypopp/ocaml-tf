(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?end_time ?id ?start_time ?timezone ~name
    ~resource_id ~scalable_dimension ~schedule ~service_namespace
    ~scalable_target_action __resource_id =
  let __resource_type = "aws_appautoscaling_scheduled_action" in
  let __resource =
    aws_appautoscaling_scheduled_action ?end_time ?id ?start_time
      ?timezone ~name ~resource_id ~scalable_dimension ~schedule
      ~service_namespace ~scalable_target_action ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appautoscaling_scheduled_action __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       end_time =
         Prop.computed __resource_type __resource_id "end_time";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
       scalable_dimension =
         Prop.computed __resource_type __resource_id
           "scalable_dimension";
       schedule =
         Prop.computed __resource_type __resource_id "schedule";
       service_namespace =
         Prop.computed __resource_type __resource_id
           "service_namespace";
       start_time =
         Prop.computed __resource_type __resource_id "start_time";
       timezone =
         Prop.computed __resource_type __resource_id "timezone";
     }
      : t)
  in
  __resource_attributes
