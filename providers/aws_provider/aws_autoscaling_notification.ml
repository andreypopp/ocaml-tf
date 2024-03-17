(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscaling_notification = {
  group_names : string prop list;  (** group_names *)
  id : string prop option; [@option]  (** id *)
  notifications : string prop list;  (** notifications *)
  topic_arn : string prop;  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_autoscaling_notification *)

type t = {
  group_names : string list prop;
  id : string prop;
  notifications : string list prop;
  topic_arn : string prop;
}

let aws_autoscaling_notification ?id ~group_names ~notifications
    ~topic_arn __resource_id =
  let __resource_type = "aws_autoscaling_notification" in
  let __resource =
    ({ group_names; id; notifications; topic_arn }
      : aws_autoscaling_notification)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_notification __resource);
  let __resource_attributes =
    ({
       group_names =
         Prop.computed __resource_type __resource_id "group_names";
       id = Prop.computed __resource_type __resource_id "id";
       notifications =
         Prop.computed __resource_type __resource_id "notifications";
       topic_arn =
         Prop.computed __resource_type __resource_id "topic_arn";
     }
      : t)
  in
  __resource_attributes
