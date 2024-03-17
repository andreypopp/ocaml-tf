(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_inspector_assessment_template__event_subscription = {
  event : string;  (** event *)
  topic_arn : string;  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_inspector_assessment_template__event_subscription *)

type aws_inspector_assessment_template = {
  duration : float;  (** duration *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  rules_package_arns : string list;  (** rules_package_arns *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  target_arn : string;  (** target_arn *)
  event_subscription :
    aws_inspector_assessment_template__event_subscription list;
}
[@@deriving yojson_of]
(** aws_inspector_assessment_template *)

let aws_inspector_assessment_template ?id ?tags ?tags_all ~duration
    ~name ~rules_package_arns ~target_arn ~event_subscription
    __resource_id =
  let __resource_type = "aws_inspector_assessment_template" in
  let __resource =
    {
      duration;
      id;
      name;
      rules_package_arns;
      tags;
      tags_all;
      target_arn;
      event_subscription;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_inspector_assessment_template __resource);
  ()
