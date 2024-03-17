(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_event_archive = {
  description : string prop option; [@option]  (** description *)
  event_pattern : string prop option; [@option]  (** event_pattern *)
  event_source_arn : string prop;  (** event_source_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  retention_days : float prop option; [@option]  (** retention_days *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_archive *)

type t = {
  arn : string prop;
  description : string prop;
  event_pattern : string prop;
  event_source_arn : string prop;
  id : string prop;
  name : string prop;
  retention_days : float prop;
}

let aws_cloudwatch_event_archive ?description ?event_pattern ?id
    ?retention_days ~event_source_arn ~name __resource_id =
  let __resource_type = "aws_cloudwatch_event_archive" in
  let __resource =
    ({
       description;
       event_pattern;
       event_source_arn;
       id;
       name;
       retention_days;
     }
      : aws_cloudwatch_event_archive)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_archive __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       event_pattern =
         Prop.computed __resource_type __resource_id "event_pattern";
       event_source_arn =
         Prop.computed __resource_type __resource_id
           "event_source_arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       retention_days =
         Prop.computed __resource_type __resource_id "retention_days";
     }
      : t)
  in
  __resource_attributes
