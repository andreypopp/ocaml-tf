(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appautoscaling_scheduled_action__scalable_target_action = {
  max_capacity : string option; [@option]  (** max_capacity *)
  min_capacity : string option; [@option]  (** min_capacity *)
}
[@@deriving yojson_of]
(** aws_appautoscaling_scheduled_action__scalable_target_action *)

type aws_appautoscaling_scheduled_action = {
  end_time : string option; [@option]  (** end_time *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_id : string;  (** resource_id *)
  scalable_dimension : string;  (** scalable_dimension *)
  schedule : string;  (** schedule *)
  service_namespace : string;  (** service_namespace *)
  start_time : string option; [@option]  (** start_time *)
  timezone : string option; [@option]  (** timezone *)
  scalable_target_action :
    aws_appautoscaling_scheduled_action__scalable_target_action list;
}
[@@deriving yojson_of]
(** aws_appautoscaling_scheduled_action *)

let aws_appautoscaling_scheduled_action ?end_time ?id ?start_time
    ?timezone ~name ~resource_id ~scalable_dimension ~schedule
    ~service_namespace ~scalable_target_action __resource_id =
  let __resource_type = "aws_appautoscaling_scheduled_action" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appautoscaling_scheduled_action __resource);
  ()
