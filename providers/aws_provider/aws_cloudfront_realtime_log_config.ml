(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_realtime_log_config__endpoint__kinesis_stream_config = {
  role_arn : string prop;  (** role_arn *)
  stream_arn : string prop;  (** stream_arn *)
}
[@@deriving yojson_of]
(** aws_cloudfront_realtime_log_config__endpoint__kinesis_stream_config *)

type aws_cloudfront_realtime_log_config__endpoint = {
  stream_type : string prop;  (** stream_type *)
  kinesis_stream_config :
    aws_cloudfront_realtime_log_config__endpoint__kinesis_stream_config
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_realtime_log_config__endpoint *)

type aws_cloudfront_realtime_log_config = {
  fields : string prop list;  (** fields *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  sampling_rate : float prop;  (** sampling_rate *)
  endpoint : aws_cloudfront_realtime_log_config__endpoint list;
}
[@@deriving yojson_of]
(** aws_cloudfront_realtime_log_config *)

let aws_cloudfront_realtime_log_config ?id ~fields ~name
    ~sampling_rate ~endpoint __resource_id =
  let __resource_type = "aws_cloudfront_realtime_log_config" in
  let __resource = { fields; id; name; sampling_rate; endpoint } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_realtime_log_config __resource);
  ()
