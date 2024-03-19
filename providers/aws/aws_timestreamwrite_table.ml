(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  encryption_option : string prop option; [@option]
      (** encryption_option *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  object_key_prefix : string prop option; [@option]
      (** object_key_prefix *)
}
[@@deriving yojson_of]
(** magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration *)

type magnetic_store_write_properties__magnetic_store_rejected_data_location = {
  s3_configuration :
    magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration
    list;
}
[@@deriving yojson_of]
(** magnetic_store_write_properties__magnetic_store_rejected_data_location *)

type magnetic_store_write_properties = {
  enable_magnetic_store_writes : bool prop option; [@option]
      (** enable_magnetic_store_writes *)
  magnetic_store_rejected_data_location :
    magnetic_store_write_properties__magnetic_store_rejected_data_location
    list;
}
[@@deriving yojson_of]
(** magnetic_store_write_properties *)

type retention_properties = {
  magnetic_store_retention_period_in_days : float prop;
      (** magnetic_store_retention_period_in_days *)
  memory_store_retention_period_in_hours : float prop;
      (** memory_store_retention_period_in_hours *)
}
[@@deriving yojson_of]
(** retention_properties *)

type schema__composite_partition_key = {
  enforcement_in_record : string prop option; [@option]
      (** enforcement_in_record *)
  name : string prop option; [@option]  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** schema__composite_partition_key *)

type schema = {
  composite_partition_key : schema__composite_partition_key list;
}
[@@deriving yojson_of]
(** schema *)

type aws_timestreamwrite_table = {
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  table_name : string prop;  (** table_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  magnetic_store_write_properties :
    magnetic_store_write_properties list;
  retention_properties : retention_properties list;
  schema : schema list;
}
[@@deriving yojson_of]
(** aws_timestreamwrite_table *)

let magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration
    ?bucket_name ?encryption_option ?kms_key_id ?object_key_prefix ()
    :
    magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration
    =
  { bucket_name; encryption_option; kms_key_id; object_key_prefix }

let magnetic_store_write_properties__magnetic_store_rejected_data_location
    ~s3_configuration () :
    magnetic_store_write_properties__magnetic_store_rejected_data_location
    =
  { s3_configuration }

let magnetic_store_write_properties ?enable_magnetic_store_writes
    ~magnetic_store_rejected_data_location () :
    magnetic_store_write_properties =
  {
    enable_magnetic_store_writes;
    magnetic_store_rejected_data_location;
  }

let retention_properties ~magnetic_store_retention_period_in_days
    ~memory_store_retention_period_in_hours () : retention_properties
    =
  {
    magnetic_store_retention_period_in_days;
    memory_store_retention_period_in_hours;
  }

let schema__composite_partition_key ?enforcement_in_record ?name
    ~type_ () : schema__composite_partition_key =
  { enforcement_in_record; name; type_ }

let schema ~composite_partition_key () : schema =
  { composite_partition_key }

let aws_timestreamwrite_table ?id ?tags ?tags_all ~database_name
    ~table_name ~magnetic_store_write_properties
    ~retention_properties ~schema () : aws_timestreamwrite_table =
  {
    database_name;
    id;
    table_name;
    tags;
    tags_all;
    magnetic_store_write_properties;
    retention_properties;
    schema;
  }

type t = {
  arn : string prop;
  database_name : string prop;
  id : string prop;
  table_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~database_name
    ~table_name ~magnetic_store_write_properties
    ~retention_properties ~schema __resource_id =
  let __resource_type = "aws_timestreamwrite_table" in
  let __resource =
    aws_timestreamwrite_table ?id ?tags ?tags_all ~database_name
      ~table_name ~magnetic_store_write_properties
      ~retention_properties ~schema ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
