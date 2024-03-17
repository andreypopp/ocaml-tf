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

let aws_cloudwatch_event_archive ?description ?event_pattern ?id
    ?retention_days ~event_source_arn ~name __resource_id =
  let __resource_type = "aws_cloudwatch_event_archive" in
  let __resource =
    {
      description;
      event_pattern;
      event_source_arn;
      id;
      name;
      retention_days;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_archive __resource);
  ()
