(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_pinpoint_event_stream = {
  application_id : string prop;
  destination_stream_arn : string prop;
  id : string prop option; [@option]
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_pinpoint_event_stream) -> ()

let yojson_of_aws_pinpoint_event_stream =
  (function
   | {
       application_id = v_application_id;
       destination_stream_arn = v_destination_stream_arn;
       id = v_id;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_stream_arn
         in
         ("destination_stream_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_pinpoint_event_stream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_pinpoint_event_stream

[@@@deriving.end]

let aws_pinpoint_event_stream ?id ~application_id
    ~destination_stream_arn ~role_arn () : aws_pinpoint_event_stream
    =
  { application_id; destination_stream_arn; id; role_arn }

type t = {
  tf_name : string;
  application_id : string prop;
  destination_stream_arn : string prop;
  id : string prop;
  role_arn : string prop;
}

let make ?id ~application_id ~destination_stream_arn ~role_arn __id =
  let __type = "aws_pinpoint_event_stream" in
  let __attrs =
    ({
       tf_name = __id;
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
