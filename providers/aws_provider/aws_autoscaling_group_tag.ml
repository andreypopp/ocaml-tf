(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscaling_group_tag__tag = {
  key : string;  (** key *)
  propagate_at_launch : bool;  (** propagate_at_launch *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group_tag__tag *)

type aws_autoscaling_group_tag = {
  autoscaling_group_name : string;  (** autoscaling_group_name *)
  tag : aws_autoscaling_group_tag__tag list;
}
[@@deriving yojson_of]
(** aws_autoscaling_group_tag *)

let aws_autoscaling_group_tag ~autoscaling_group_name ~tag
    __resource_id =
  let __resource_type = "aws_autoscaling_group_tag" in
  let __resource = { autoscaling_group_name; tag } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_group_tag __resource);
  ()
