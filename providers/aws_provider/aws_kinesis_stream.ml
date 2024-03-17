(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kinesis_stream__stream_mode_details = {
  stream_mode : string;  (** stream_mode *)
}
[@@deriving yojson_of]
(** aws_kinesis_stream__stream_mode_details *)

type aws_kinesis_stream__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_kinesis_stream__timeouts *)

type aws_kinesis_stream = {
  encryption_type : string option; [@option]  (** encryption_type *)
  enforce_consumer_deletion : bool option; [@option]
      (** enforce_consumer_deletion *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  name : string;  (** name *)
  retention_period : float option; [@option]  (** retention_period *)
  shard_count : float option; [@option]  (** shard_count *)
  shard_level_metrics : string list option; [@option]
      (** shard_level_metrics *)
  tags : (string * string) list option; [@option]  (** tags *)
  stream_mode_details : aws_kinesis_stream__stream_mode_details list;
  timeouts : aws_kinesis_stream__timeouts option;
}
[@@deriving yojson_of]
(** aws_kinesis_stream *)

let aws_kinesis_stream ?encryption_type ?enforce_consumer_deletion
    ?kms_key_id ?retention_period ?shard_count ?shard_level_metrics
    ?tags ?timeouts ~name ~stream_mode_details __resource_id =
  let __resource_type = "aws_kinesis_stream" in
  let __resource =
    {
      encryption_type;
      enforce_consumer_deletion;
      kms_key_id;
      name;
      retention_period;
      shard_count;
      shard_level_metrics;
      tags;
      stream_mode_details;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kinesis_stream __resource);
  ()
