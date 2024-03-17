(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscaling_schedule = {
  autoscaling_group_name : string;  (** autoscaling_group_name *)
  scheduled_action_name : string;  (** scheduled_action_name *)
}
[@@deriving yojson_of]
(** aws_autoscaling_schedule *)

let aws_autoscaling_schedule ~autoscaling_group_name
    ~scheduled_action_name __resource_id =
  let __resource_type = "aws_autoscaling_schedule" in
  let __resource =
    { autoscaling_group_name; scheduled_action_name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_schedule __resource);
  ()
