(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_inspector_assessment_template__event_subscription = {
  event : string prop;  (** event *)
  topic_arn : string prop;  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_inspector_assessment_template__event_subscription *)

type aws_inspector_assessment_template = {
  duration : float prop;  (** duration *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  rules_package_arns : string prop list;  (** rules_package_arns *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_arn : string prop;  (** target_arn *)
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
