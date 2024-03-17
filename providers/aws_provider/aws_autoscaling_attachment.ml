(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscaling_attachment = {
  autoscaling_group_name : string prop;
      (** autoscaling_group_name *)
  elb : string prop option; [@option]  (** elb *)
  id : string prop option; [@option]  (** id *)
  lb_target_group_arn : string prop option; [@option]
      (** lb_target_group_arn *)
}
[@@deriving yojson_of]
(** aws_autoscaling_attachment *)

let aws_autoscaling_attachment ?elb ?id ?lb_target_group_arn
    ~autoscaling_group_name __resource_id =
  let __resource_type = "aws_autoscaling_attachment" in
  let __resource =
    { autoscaling_group_name; elb; id; lb_target_group_arn }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_attachment __resource);
  ()
