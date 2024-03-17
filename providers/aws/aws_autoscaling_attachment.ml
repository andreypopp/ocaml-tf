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

type t = {
  autoscaling_group_name : string prop;
  elb : string prop;
  id : string prop;
  lb_target_group_arn : string prop;
}

let aws_autoscaling_attachment ?elb ?id ?lb_target_group_arn
    ~autoscaling_group_name __resource_id =
  let __resource_type = "aws_autoscaling_attachment" in
  let __resource =
    ({ autoscaling_group_name; elb; id; lb_target_group_arn }
      : aws_autoscaling_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_attachment __resource);
  let __resource_attributes =
    ({
       autoscaling_group_name =
         Prop.computed __resource_type __resource_id
           "autoscaling_group_name";
       elb = Prop.computed __resource_type __resource_id "elb";
       id = Prop.computed __resource_type __resource_id "id";
       lb_target_group_arn =
         Prop.computed __resource_type __resource_id
           "lb_target_group_arn";
     }
      : t)
  in
  __resource_attributes
