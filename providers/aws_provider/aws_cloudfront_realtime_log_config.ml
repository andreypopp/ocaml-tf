(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudfront_realtime_log_config__endpoint__kinesis_stream_config = {
  role_arn : string;  (** role_arn *)
  stream_arn : string;  (** stream_arn *)
}
[@@deriving yojson_of]
(** aws_cloudfront_realtime_log_config__endpoint__kinesis_stream_config *)

type aws_cloudfront_realtime_log_config__endpoint = {
  stream_type : string;  (** stream_type *)
  kinesis_stream_config :
    aws_cloudfront_realtime_log_config__endpoint__kinesis_stream_config
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_realtime_log_config__endpoint *)

type aws_cloudfront_realtime_log_config = {
  fields : string list;  (** fields *)
  name : string;  (** name *)
  sampling_rate : float;  (** sampling_rate *)
  endpoint : aws_cloudfront_realtime_log_config__endpoint list;
}
[@@deriving yojson_of]
(** aws_cloudfront_realtime_log_config *)

let aws_cloudfront_realtime_log_config ~fields ~name ~sampling_rate
    ~endpoint __resource_id =
  let __resource_type = "aws_cloudfront_realtime_log_config" in
  let __resource = { fields; name; sampling_rate; endpoint } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_realtime_log_config __resource);
  ()