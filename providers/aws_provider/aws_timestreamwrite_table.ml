(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_timestreamwrite_table__magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  encryption_option : string prop option; [@option]
      (** encryption_option *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  object_key_prefix : string prop option; [@option]
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
  enable_magnetic_store_writes : bool prop option; [@option]
      (** enable_magnetic_store_writes *)
  magnetic_store_rejected_data_location :
    aws_timestreamwrite_table__magnetic_store_write_properties__magnetic_store_rejected_data_location
    list;
}
[@@deriving yojson_of]
(** aws_timestreamwrite_table__magnetic_store_write_properties *)

type aws_timestreamwrite_table__retention_properties = {
  magnetic_store_retention_period_in_days : float prop;
      (** magnetic_store_retention_period_in_days *)
  memory_store_retention_period_in_hours : float prop;
      (** memory_store_retention_period_in_hours *)
}
[@@deriving yojson_of]
(** aws_timestreamwrite_table__retention_properties *)

type aws_timestreamwrite_table__schema__composite_partition_key = {
  enforcement_in_record : string prop option; [@option]
      (** enforcement_in_record *)
  name : string prop option; [@option]  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
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
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  table_name : string prop;  (** table_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  magnetic_store_write_properties :
    aws_timestreamwrite_table__magnetic_store_write_properties list;
  retention_properties :
    aws_timestreamwrite_table__retention_properties list;
  schema : aws_timestreamwrite_table__schema list;
}
[@@deriving yojson_of]
(** aws_timestreamwrite_table *)

type t = {
  arn : string prop;
  database_name : string prop;
  id : string prop;
  table_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_timestreamwrite_table ?id ?tags ?tags_all ~database_name
    ~table_name ~magnetic_store_write_properties
    ~retention_properties ~schema __resource_id =
  let __resource_type = "aws_timestreamwrite_table" in
  let __resource =
    ({
       database_name;
       id;
       table_name;
       tags;
       tags_all;
       magnetic_store_write_properties;
       retention_properties;
       schema;
     }
      : aws_timestreamwrite_table)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_timestreamwrite_table __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       id = Prop.computed __resource_type __resource_id "id";
       table_name =
         Prop.computed __resource_type __resource_id "table_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
