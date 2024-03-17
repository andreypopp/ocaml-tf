(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ivschat_logging_configuration__destination_configuration__cloudwatch_logs = {
  log_group_name : string;  (** log_group_name *)
}
[@@deriving yojson_of]
(** aws_ivschat_logging_configuration__destination_configuration__cloudwatch_logs *)

type aws_ivschat_logging_configuration__destination_configuration__firehose = {
  delivery_stream_name : string;  (** delivery_stream_name *)
}
[@@deriving yojson_of]
(** aws_ivschat_logging_configuration__destination_configuration__firehose *)

type aws_ivschat_logging_configuration__destination_configuration__s3 = {
  bucket_name : string;  (** bucket_name *)
}
[@@deriving yojson_of]
(** aws_ivschat_logging_configuration__destination_configuration__s3 *)

type aws_ivschat_logging_configuration__destination_configuration = {
  cloudwatch_logs :
    aws_ivschat_logging_configuration__destination_configuration__cloudwatch_logs
    list;
  firehose :
    aws_ivschat_logging_configuration__destination_configuration__firehose
    list;
  s3 :
    aws_ivschat_logging_configuration__destination_configuration__s3
    list;
}
[@@deriving yojson_of]
(** aws_ivschat_logging_configuration__destination_configuration *)

type aws_ivschat_logging_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ivschat_logging_configuration__timeouts *)

type aws_ivschat_logging_configuration = {
  name : string option; [@option]  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  destination_configuration :
    aws_ivschat_logging_configuration__destination_configuration list;
  timeouts : aws_ivschat_logging_configuration__timeouts option;
}
[@@deriving yojson_of]
(** aws_ivschat_logging_configuration *)

let aws_ivschat_logging_configuration ?name ?tags ?timeouts
    ~destination_configuration __resource_id =
  let __resource_type = "aws_ivschat_logging_configuration" in
  let __resource =
    { name; tags; destination_configuration; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ivschat_logging_configuration __resource);
  ()
