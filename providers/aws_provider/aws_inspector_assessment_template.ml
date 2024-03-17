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

type t = {
  arn : string prop;
  duration : float prop;
  id : string prop;
  name : string prop;
  rules_package_arns : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
}

let aws_inspector_assessment_template ?id ?tags ?tags_all ~duration
    ~name ~rules_package_arns ~target_arn ~event_subscription
    __resource_id =
  let __resource_type = "aws_inspector_assessment_template" in
  let __resource =
    ({
       duration;
       id;
       name;
       rules_package_arns;
       tags;
       tags_all;
       target_arn;
       event_subscription;
     }
      : aws_inspector_assessment_template)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_inspector_assessment_template __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       duration =
         Prop.computed __resource_type __resource_id "duration";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       rules_package_arns =
         Prop.computed __resource_type __resource_id
           "rules_package_arns";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       target_arn =
         Prop.computed __resource_type __resource_id "target_arn";
     }
      : t)
  in
  __resource_attributes
