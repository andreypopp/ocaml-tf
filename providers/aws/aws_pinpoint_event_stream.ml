(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_pinpoint_event_stream = {
  application_id : string prop;  (** application_id *)
  destination_stream_arn : string prop;
      (** destination_stream_arn *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_pinpoint_event_stream *)

type t = {
  application_id : string prop;
  destination_stream_arn : string prop;
  id : string prop;
  role_arn : string prop;
}

let aws_pinpoint_event_stream ?id ~application_id
    ~destination_stream_arn ~role_arn __resource_id =
  let __resource_type = "aws_pinpoint_event_stream" in
  let __resource =
    ({ application_id; destination_stream_arn; id; role_arn }
      : aws_pinpoint_event_stream)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_event_stream __resource);
  let __resource_attributes =
    ({
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       destination_stream_arn =
         Prop.computed __resource_type __resource_id
           "destination_stream_arn";
       id = Prop.computed __resource_type __resource_id "id";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
     }
      : t)
  in
  __resource_attributes
