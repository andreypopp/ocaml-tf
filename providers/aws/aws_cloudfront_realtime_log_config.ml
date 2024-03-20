(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint__kinesis_stream_config = {
  role_arn : string prop;  (** role_arn *)
  stream_arn : string prop;  (** stream_arn *)
}
[@@deriving yojson_of]
(** endpoint__kinesis_stream_config *)

type endpoint = {
  stream_type : string prop;  (** stream_type *)
  kinesis_stream_config : endpoint__kinesis_stream_config list;
}
[@@deriving yojson_of]
(** endpoint *)

type aws_cloudfront_realtime_log_config = {
  fields : string prop list;  (** fields *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  sampling_rate : float prop;  (** sampling_rate *)
  endpoint : endpoint list;
}
[@@deriving yojson_of]
(** aws_cloudfront_realtime_log_config *)

let endpoint__kinesis_stream_config ~role_arn ~stream_arn () :
    endpoint__kinesis_stream_config =
  { role_arn; stream_arn }

let endpoint ~stream_type ~kinesis_stream_config () : endpoint =
  { stream_type; kinesis_stream_config }

let aws_cloudfront_realtime_log_config ?id ~fields ~name
    ~sampling_rate ~endpoint () : aws_cloudfront_realtime_log_config
    =
  { fields; id; name; sampling_rate; endpoint }

type t = {
  arn : string prop;
  fields : string list prop;
  id : string prop;
  name : string prop;
  sampling_rate : float prop;
}

let make ?id ~fields ~name ~sampling_rate ~endpoint __id =
  let __type = "aws_cloudfront_realtime_log_config" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       fields = Prop.computed __type __id "fields";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       sampling_rate = Prop.computed __type __id "sampling_rate";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_realtime_log_config
        (aws_cloudfront_realtime_log_config ?id ~fields ~name
           ~sampling_rate ~endpoint ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~fields ~name ~sampling_rate ~endpoint
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~fields ~name ~sampling_rate ~endpoint __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
