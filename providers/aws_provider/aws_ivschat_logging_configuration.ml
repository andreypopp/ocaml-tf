(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ivschat_logging_configuration__destination_configuration__cloudwatch_logs = {
  log_group_name : string prop;  (** log_group_name *)
}
[@@deriving yojson_of]
(** aws_ivschat_logging_configuration__destination_configuration__cloudwatch_logs *)

type aws_ivschat_logging_configuration__destination_configuration__firehose = {
  delivery_stream_name : string prop;  (** delivery_stream_name *)
}
[@@deriving yojson_of]
(** aws_ivschat_logging_configuration__destination_configuration__firehose *)

type aws_ivschat_logging_configuration__destination_configuration__s3 = {
  bucket_name : string prop;  (** bucket_name *)
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ivschat_logging_configuration__timeouts *)

type aws_ivschat_logging_configuration = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  destination_configuration :
    aws_ivschat_logging_configuration__destination_configuration list;
  timeouts : aws_ivschat_logging_configuration__timeouts option;
}
[@@deriving yojson_of]
(** aws_ivschat_logging_configuration *)

let aws_ivschat_logging_configuration ?id ?name ?tags ?tags_all
    ?timeouts ~destination_configuration __resource_id =
  let __resource_type = "aws_ivschat_logging_configuration" in
  let __resource =
    { id; name; tags; tags_all; destination_configuration; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ivschat_logging_configuration __resource);
  ()
