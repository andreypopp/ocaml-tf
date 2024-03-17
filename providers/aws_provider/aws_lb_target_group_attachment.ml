(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lb_target_group_attachment = {
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  id : string prop option; [@option]  (** id *)
  port : float prop option; [@option]  (** port *)
  target_group_arn : string prop;  (** target_group_arn *)
  target_id : string prop;  (** target_id *)
}
[@@deriving yojson_of]
(** aws_lb_target_group_attachment *)

type t = {
  availability_zone : string prop;
  id : string prop;
  port : float prop;
  target_group_arn : string prop;
  target_id : string prop;
}

let aws_lb_target_group_attachment ?availability_zone ?id ?port
    ~target_group_arn ~target_id __resource_id =
  let __resource_type = "aws_lb_target_group_attachment" in
  let __resource =
    ({ availability_zone; id; port; target_group_arn; target_id }
      : aws_lb_target_group_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb_target_group_attachment __resource);
  let __resource_attributes =
    ({
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       id = Prop.computed __resource_type __resource_id "id";
       port = Prop.computed __resource_type __resource_id "port";
       target_group_arn =
         Prop.computed __resource_type __resource_id
           "target_group_arn";
       target_id =
         Prop.computed __resource_type __resource_id "target_id";
     }
      : t)
  in
  __resource_attributes
