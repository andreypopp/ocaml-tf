(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type stream_mode_details = {
  stream_mode : string prop;  (** stream_mode *)
}
[@@deriving yojson_of]
(** stream_mode_details *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_kinesis_stream = {
  arn : string prop option; [@option]  (** arn *)
  encryption_type : string prop option; [@option]
      (** encryption_type *)
  enforce_consumer_deletion : bool prop option; [@option]
      (** enforce_consumer_deletion *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  name : string prop;  (** name *)
  retention_period : float prop option; [@option]
      (** retention_period *)
  shard_count : float prop option; [@option]  (** shard_count *)
  shard_level_metrics : string prop list option; [@option]
      (** shard_level_metrics *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  stream_mode_details : stream_mode_details list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_kinesis_stream *)

let stream_mode_details ~stream_mode () : stream_mode_details =
  { stream_mode }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kinesis_stream ?arn ?encryption_type
    ?enforce_consumer_deletion ?id ?kms_key_id ?retention_period
    ?shard_count ?shard_level_metrics ?tags ?tags_all ?timeouts ~name
    ~stream_mode_details () : aws_kinesis_stream =
  {
    arn;
    encryption_type;
    enforce_consumer_deletion;
    id;
    kms_key_id;
    name;
    retention_period;
    shard_count;
    shard_level_metrics;
    tags;
    tags_all;
    stream_mode_details;
    timeouts;
  }

type t = {
  arn : string prop;
  encryption_type : string prop;
  enforce_consumer_deletion : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  retention_period : float prop;
  shard_count : float prop;
  shard_level_metrics : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?arn ?encryption_type
    ?enforce_consumer_deletion ?id ?kms_key_id ?retention_period
    ?shard_count ?shard_level_metrics ?tags ?tags_all ?timeouts ~name
    ~stream_mode_details __resource_id =
  let __resource_type = "aws_kinesis_stream" in
  let __resource =
    aws_kinesis_stream ?arn ?encryption_type
      ?enforce_consumer_deletion ?id ?kms_key_id ?retention_period
      ?shard_count ?shard_level_metrics ?tags ?tags_all ?timeouts
      ~name ~stream_mode_details ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kinesis_stream __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       encryption_type =
         Prop.computed __resource_type __resource_id
           "encryption_type";
       enforce_consumer_deletion =
         Prop.computed __resource_type __resource_id
           "enforce_consumer_deletion";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       name = Prop.computed __resource_type __resource_id "name";
       retention_period =
         Prop.computed __resource_type __resource_id
           "retention_period";
       shard_count =
         Prop.computed __resource_type __resource_id "shard_count";
       shard_level_metrics =
         Prop.computed __resource_type __resource_id
           "shard_level_metrics";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
