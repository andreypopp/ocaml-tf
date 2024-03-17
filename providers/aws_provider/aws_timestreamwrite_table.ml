(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_timestreamwrite_table__magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration = {
  bucket_name : string option; [@option]  (** bucket_name *)
  encryption_option : string option; [@option]
      (** encryption_option *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  object_key_prefix : string option; [@option]
      (** object_key_prefix *)
}
[@@deriving yojson_of]
(** aws_timestreamwrite_table__magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration *)

type aws_timestreamwrite_table__magnetic_store_write_properties__magnetic_store_rejected_data_location = {
  s3_configuration :
    aws_timestreamwrite_table__magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration
    list;
}
[@@deriving yojson_of]
(** aws_timestreamwrite_table__magnetic_store_write_properties__magnetic_store_rejected_data_location *)

type aws_timestreamwrite_table__magnetic_store_write_properties = {
  enable_magnetic_store_writes : bool option; [@option]
      (** enable_magnetic_store_writes *)
  magnetic_store_rejected_data_location :
    aws_timestreamwrite_table__magnetic_store_write_properties__magnetic_store_rejected_data_location
    list;
}
[@@deriving yojson_of]
(** aws_timestreamwrite_table__magnetic_store_write_properties *)

type aws_timestreamwrite_table__retention_properties = {
  magnetic_store_retention_period_in_days : float;
      (** magnetic_store_retention_period_in_days *)
  memory_store_retention_period_in_hours : float;
      (** memory_store_retention_period_in_hours *)
}
[@@deriving yojson_of]
(** aws_timestreamwrite_table__retention_properties *)

type aws_timestreamwrite_table__schema__composite_partition_key = {
  enforcement_in_record : string option; [@option]
      (** enforcement_in_record *)
  name : string option; [@option]  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_timestreamwrite_table__schema__composite_partition_key *)

type aws_timestreamwrite_table__schema = {
  composite_partition_key :
    aws_timestreamwrite_table__schema__composite_partition_key list;
}
[@@deriving yojson_of]
(** aws_timestreamwrite_table__schema *)

type aws_timestreamwrite_table = {
  database_name : string;  (** database_name *)
  table_name : string;  (** table_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  magnetic_store_write_properties :
    aws_timestreamwrite_table__magnetic_store_write_properties list;
  retention_properties :
    aws_timestreamwrite_table__retention_properties list;
  schema : aws_timestreamwrite_table__schema list;
}
[@@deriving yojson_of]
(** aws_timestreamwrite_table *)

let aws_timestreamwrite_table ?tags ~database_name ~table_name
    ~magnetic_store_write_properties ~retention_properties ~schema
    __resource_id =
  let __resource_type = "aws_timestreamwrite_table" in
  let __resource =
    {
      database_name;
      table_name;
      tags;
      magnetic_store_write_properties;
      retention_properties;
      schema;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_timestreamwrite_table __resource);
  ()
