(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_alb_target_group_attachment = {
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  id : string prop option; [@option]  (** id *)
  port : float prop option; [@option]  (** port *)
  target_group_arn : string prop;  (** target_group_arn *)
  target_id : string prop;  (** target_id *)
}
[@@deriving yojson_of]
(** aws_alb_target_group_attachment *)

let aws_alb_target_group_attachment ?availability_zone ?id ?port
    ~target_group_arn ~target_id __resource_id =
  let __resource_type = "aws_alb_target_group_attachment" in
  let __resource =
    { availability_zone; id; port; target_group_arn; target_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_alb_target_group_attachment __resource);
  ()
