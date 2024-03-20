(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_pinpoint_event_stream = {
  application_id : string prop;  (** application_id *)
  destination_stream_arn : string prop;
      (** destination_stream_arn *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_pinpoint_event_stream *)

let aws_pinpoint_event_stream ?id ~application_id
    ~destination_stream_arn ~role_arn () : aws_pinpoint_event_stream
    =
  { application_id; destination_stream_arn; id; role_arn }

type t = {
  application_id : string prop;
  destination_stream_arn : string prop;
  id : string prop;
  role_arn : string prop;
}

let make ?id ~application_id ~destination_stream_arn ~role_arn __id =
  let __type = "aws_pinpoint_event_stream" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       destination_stream_arn =
         Prop.computed __type __id "destination_stream_arn";
       id = Prop.computed __type __id "id";
       role_arn = Prop.computed __type __id "role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_event_stream
        (aws_pinpoint_event_stream ?id ~application_id
           ~destination_stream_arn ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~application_id ~destination_stream_arn
    ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ~application_id ~destination_stream_arn ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
