(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~fields ~name ~sampling_rate ~endpoint
    __resource_id =
  let __resource_type = "aws_cloudfront_realtime_log_config" in
  let __resource =
    aws_cloudfront_realtime_log_config ?id ~fields ~name
      ~sampling_rate ~endpoint ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_realtime_log_config __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       fields = Prop.computed __resource_type __resource_id "fields";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       sampling_rate =
         Prop.computed __resource_type __resource_id "sampling_rate";
     }
      : t)
  in
  __resource_attributes
