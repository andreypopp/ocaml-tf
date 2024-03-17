(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_notification__lambda_function = {
  events : string list;  (** events *)
  filter_prefix : string option; [@option]  (** filter_prefix *)
  filter_suffix : string option; [@option]  (** filter_suffix *)
  id : string option; [@option]  (** id *)
  lambda_function_arn : string option; [@option]
      (** lambda_function_arn *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_notification__lambda_function *)

type aws_s3_bucket_notification__queue = {
  events : string list;  (** events *)
  filter_prefix : string option; [@option]  (** filter_prefix *)
  filter_suffix : string option; [@option]  (** filter_suffix *)
  id : string option; [@option]  (** id *)
  queue_arn : string;  (** queue_arn *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_notification__queue *)

type aws_s3_bucket_notification__topic = {
  events : string list;  (** events *)
  filter_prefix : string option; [@option]  (** filter_prefix *)
  filter_suffix : string option; [@option]  (** filter_suffix *)
  id : string option; [@option]  (** id *)
  topic_arn : string;  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_notification__topic *)

type aws_s3_bucket_notification = {
  bucket : string;  (** bucket *)
  eventbridge : bool option; [@option]  (** eventbridge *)
  lambda_function : aws_s3_bucket_notification__lambda_function list;
  queue : aws_s3_bucket_notification__queue list;
  topic : aws_s3_bucket_notification__topic list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_notification *)

let aws_s3_bucket_notification ?eventbridge ~bucket ~lambda_function
    ~queue ~topic __resource_id =
  let __resource_type = "aws_s3_bucket_notification" in
  let __resource =
    { bucket; eventbridge; lambda_function; queue; topic }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_notification __resource);
  ()
