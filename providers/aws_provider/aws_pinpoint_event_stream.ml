(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_pinpoint_event_stream = {
  application_id : string;  (** application_id *)
  destination_stream_arn : string;  (** destination_stream_arn *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_pinpoint_event_stream *)

let aws_pinpoint_event_stream ~application_id ~destination_stream_arn
    ~role_arn __resource_id =
  let __resource_type = "aws_pinpoint_event_stream" in
  let __resource =
    { application_id; destination_stream_arn; role_arn }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_event_stream __resource);
  ()
