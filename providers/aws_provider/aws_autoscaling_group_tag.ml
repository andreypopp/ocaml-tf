(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscaling_group_tag__tag = {
  key : string prop;  (** key *)
  propagate_at_launch : bool prop;  (** propagate_at_launch *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_group_tag__tag *)

type aws_autoscaling_group_tag = {
  autoscaling_group_name : string prop;
      (** autoscaling_group_name *)
  id : string prop option; [@option]  (** id *)
  tag : aws_autoscaling_group_tag__tag list;
}
[@@deriving yojson_of]
(** aws_autoscaling_group_tag *)

let aws_autoscaling_group_tag ?id ~autoscaling_group_name ~tag
    __resource_id =
  let __resource_type = "aws_autoscaling_group_tag" in
  let __resource = { autoscaling_group_name; id; tag } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_group_tag __resource);
  ()
