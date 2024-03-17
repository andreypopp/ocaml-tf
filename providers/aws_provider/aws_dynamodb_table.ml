(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dynamodb_table__attribute = {
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table__attribute *)

type aws_dynamodb_table__global_secondary_index = {
  hash_key : string;  (** hash_key *)
  name : string;  (** name *)
  non_key_attributes : string list option; [@option]
      (** non_key_attributes *)
  projection_type : string;  (** projection_type *)
  range_key : string option; [@option]  (** range_key *)
  read_capacity : float option; [@option]  (** read_capacity *)
  write_capacity : float option; [@option]  (** write_capacity *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table__global_secondary_index *)

type aws_dynamodb_table__import_table__input_format_options__csv = {
  delimiter : string option; [@option]  (** delimiter *)
  header_list : string list option; [@option]  (** header_list *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table__import_table__input_format_options__csv *)

type aws_dynamodb_table__import_table__input_format_options = {
  csv :
    aws_dynamodb_table__import_table__input_format_options__csv list;
}
[@@deriving yojson_of]
(** aws_dynamodb_table__import_table__input_format_options *)

type aws_dynamodb_table__import_table__s3_bucket_source = {
  bucket : string;  (** bucket *)
  bucket_owner : string option; [@option]  (** bucket_owner *)
  key_prefix : string option; [@option]  (** key_prefix *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table__import_table__s3_bucket_source *)

type aws_dynamodb_table__import_table = {
  input_compression_type : string option; [@option]
      (** input_compression_type *)
  input_format : string;  (** input_format *)
  input_format_options :
    aws_dynamodb_table__import_table__input_format_options list;
  s3_bucket_source :
    aws_dynamodb_table__import_table__s3_bucket_source list;
}
[@@deriving yojson_of]
(** aws_dynamodb_table__import_table *)

type aws_dynamodb_table__local_secondary_index = {
  name : string;  (** name *)
  non_key_attributes : string list option; [@option]
      (** non_key_attributes *)
  projection_type : string;  (** projection_type *)
  range_key : string;  (** range_key *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table__local_secondary_index *)

type aws_dynamodb_table__point_in_time_recovery = {
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table__point_in_time_recovery *)

type aws_dynamodb_table__replica = {
  arn : string;  (** arn *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  point_in_time_recovery : bool option; [@option]
      (** point_in_time_recovery *)
  propagate_tags : bool option; [@option]  (** propagate_tags *)
  region_name : string;  (** region_name *)
  stream_arn : string;  (** stream_arn *)
  stream_label : string;  (** stream_label *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table__replica *)

type aws_dynamodb_table__server_side_encryption = {
  enabled : bool;  (** enabled *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table__server_side_encryption *)

type aws_dynamodb_table__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table__timeouts *)

type aws_dynamodb_table__ttl = {
  attribute_name : string;  (** attribute_name *)
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_dynamodb_table__ttl *)

type aws_dynamodb_table = {
  billing_mode : string option; [@option]  (** billing_mode *)
  deletion_protection_enabled : bool option; [@option]
      (** deletion_protection_enabled *)
  hash_key : string option; [@option]  (** hash_key *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  range_key : string option; [@option]  (** range_key *)
  read_capacity : float option; [@option]  (** read_capacity *)
  restore_date_time : string option; [@option]
      (** restore_date_time *)
  restore_source_name : string option; [@option]
      (** restore_source_name *)
  restore_to_latest_time : bool option; [@option]
      (** restore_to_latest_time *)
  stream_enabled : bool option; [@option]  (** stream_enabled *)
  stream_view_type : string option; [@option]
      (** stream_view_type *)
  table_class : string option; [@option]  (** table_class *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  write_capacity : float option; [@option]  (** write_capacity *)
  attribute : aws_dynamodb_table__attribute list;
  global_secondary_index :
    aws_dynamodb_table__global_secondary_index list;
  import_table : aws_dynamodb_table__import_table list;
  local_secondary_index :
    aws_dynamodb_table__local_secondary_index list;
  point_in_time_recovery :
    aws_dynamodb_table__point_in_time_recovery list;
  replica : aws_dynamodb_table__replica list;
  server_side_encryption :
    aws_dynamodb_table__server_side_encryption list;
  timeouts : aws_dynamodb_table__timeouts option;
  ttl : aws_dynamodb_table__ttl list;
}
[@@deriving yojson_of]
(** aws_dynamodb_table *)

let aws_dynamodb_table ?billing_mode ?deletion_protection_enabled
    ?hash_key ?id ?range_key ?read_capacity ?restore_date_time
    ?restore_source_name ?restore_to_latest_time ?stream_enabled
    ?stream_view_type ?table_class ?tags ?tags_all ?write_capacity
    ?timeouts ~name ~attribute ~global_secondary_index ~import_table
    ~local_secondary_index ~point_in_time_recovery ~replica
    ~server_side_encryption ~ttl __resource_id =
  let __resource_type = "aws_dynamodb_table" in
  let __resource =
    {
      billing_mode;
      deletion_protection_enabled;
      hash_key;
      id;
      name;
      range_key;
      read_capacity;
      restore_date_time;
      restore_source_name;
      restore_to_latest_time;
      stream_enabled;
      stream_view_type;
      table_class;
      tags;
      tags_all;
      write_capacity;
      attribute;
      global_secondary_index;
      import_table;
      local_secondary_index;
      point_in_time_recovery;
      replica;
      server_side_encryption;
      timeouts;
      ttl;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_table __resource);
  ()
