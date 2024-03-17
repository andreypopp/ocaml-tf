(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscaling_notification = {
  group_names : string list;  (** group_names *)
  id : string option; [@option]  (** id *)
  notifications : string list;  (** notifications *)
  topic_arn : string;  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_autoscaling_notification *)

let aws_autoscaling_notification ?id ~group_names ~notifications
    ~topic_arn __resource_id =
  let __resource_type = "aws_autoscaling_notification" in
  let __resource = { group_names; id; notifications; topic_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_notification __resource);
  ()
