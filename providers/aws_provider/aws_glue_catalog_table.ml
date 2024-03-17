(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_glue_catalog_table__open_table_format_input__iceberg_input = {
  metadata_operation : string;  (** metadata_operation *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_glue_catalog_table__open_table_format_input__iceberg_input *)

type aws_glue_catalog_table__open_table_format_input = {
  iceberg_input :
    aws_glue_catalog_table__open_table_format_input__iceberg_input
    list;
}
[@@deriving yojson_of]
(** aws_glue_catalog_table__open_table_format_input *)

type aws_glue_catalog_table__partition_index = {
  index_name : string;  (** index_name *)
  index_status : string;  (** index_status *)
  keys : string list;  (** keys *)
}
[@@deriving yojson_of]
(** aws_glue_catalog_table__partition_index *)

type aws_glue_catalog_table__partition_keys = {
  comment : string option; [@option]  (** comment *)
  name : string;  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_glue_catalog_table__partition_keys *)

type aws_glue_catalog_table__storage_descriptor__columns = {
  comment : string option; [@option]  (** comment *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_glue_catalog_table__storage_descriptor__columns *)

type aws_glue_catalog_table__storage_descriptor__schema_reference__schema_id = {
  registry_name : string option; [@option]  (** registry_name *)
  schema_arn : string option; [@option]  (** schema_arn *)
  schema_name : string option; [@option]  (** schema_name *)
}
[@@deriving yojson_of]
(** aws_glue_catalog_table__storage_descriptor__schema_reference__schema_id *)

type aws_glue_catalog_table__storage_descriptor__schema_reference = {
  schema_version_id : string option; [@option]
      (** schema_version_id *)
  schema_version_number : float;  (** schema_version_number *)
  schema_id :
    aws_glue_catalog_table__storage_descriptor__schema_reference__schema_id
    list;
}
[@@deriving yojson_of]
(** aws_glue_catalog_table__storage_descriptor__schema_reference *)

type aws_glue_catalog_table__storage_descriptor__ser_de_info = {
  name : string option; [@option]  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  serialization_library : string option; [@option]
      (** serialization_library *)
}
[@@deriving yojson_of]
(** aws_glue_catalog_table__storage_descriptor__ser_de_info *)

type aws_glue_catalog_table__storage_descriptor__skewed_info = {
  skewed_column_names : string list option; [@option]
      (** skewed_column_names *)
  skewed_column_value_location_maps : (string * string) list option;
      [@option]
      (** skewed_column_value_location_maps *)
  skewed_column_values : string list option; [@option]
      (** skewed_column_values *)
}
[@@deriving yojson_of]
(** aws_glue_catalog_table__storage_descriptor__skewed_info *)

type aws_glue_catalog_table__storage_descriptor__sort_columns = {
  column : string;  (** column *)
  sort_order : float;  (** sort_order *)
}
[@@deriving yojson_of]
(** aws_glue_catalog_table__storage_descriptor__sort_columns *)

type aws_glue_catalog_table__storage_descriptor = {
  bucket_columns : string list option; [@option]
      (** bucket_columns *)
  compressed : bool option; [@option]  (** compressed *)
  input_format : string option; [@option]  (** input_format *)
  location : string option; [@option]  (** location *)
  number_of_buckets : float option; [@option]
      (** number_of_buckets *)
  output_format : string option; [@option]  (** output_format *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  stored_as_sub_directories : bool option; [@option]
      (** stored_as_sub_directories *)
  columns : aws_glue_catalog_table__storage_descriptor__columns list;
  schema_reference :
    aws_glue_catalog_table__storage_descriptor__schema_reference list;
  ser_de_info :
    aws_glue_catalog_table__storage_descriptor__ser_de_info list;
  skewed_info :
    aws_glue_catalog_table__storage_descriptor__skewed_info list;
  sort_columns :
    aws_glue_catalog_table__storage_descriptor__sort_columns list;
}
[@@deriving yojson_of]
(** aws_glue_catalog_table__storage_descriptor *)

type aws_glue_catalog_table__target_table = {
  catalog_id : string;  (** catalog_id *)
  database_name : string;  (** database_name *)
  name : string;  (** name *)
  region : string option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** aws_glue_catalog_table__target_table *)

type aws_glue_catalog_table = {
  database_name : string;  (** database_name *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  owner : string option; [@option]  (** owner *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  retention : float option; [@option]  (** retention *)
  table_type : string option; [@option]  (** table_type *)
  view_expanded_text : string option; [@option]
      (** view_expanded_text *)
  view_original_text : string option; [@option]
      (** view_original_text *)
  open_table_format_input :
    aws_glue_catalog_table__open_table_format_input list;
  partition_index : aws_glue_catalog_table__partition_index list;
  partition_keys : aws_glue_catalog_table__partition_keys list;
  storage_descriptor :
    aws_glue_catalog_table__storage_descriptor list;
  target_table : aws_glue_catalog_table__target_table list;
}
[@@deriving yojson_of]
(** aws_glue_catalog_table *)

let aws_glue_catalog_table ?description ?owner ?parameters ?retention
    ?table_type ?view_expanded_text ?view_original_text
    ~database_name ~name ~open_table_format_input ~partition_index
    ~partition_keys ~storage_descriptor ~target_table __resource_id =
  let __resource_type = "aws_glue_catalog_table" in
  let __resource =
    {
      database_name;
      description;
      name;
      owner;
      parameters;
      retention;
      table_type;
      view_expanded_text;
      view_original_text;
      open_table_format_input;
      partition_index;
      partition_keys;
      storage_descriptor;
      target_table;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_catalog_table __resource);
  ()
