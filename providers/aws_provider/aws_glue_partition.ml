(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_partition__storage_descriptor__columns = {
  comment : string option; [@option]  (** comment *)
  name : string;  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_glue_partition__storage_descriptor__columns *)

type aws_glue_partition__storage_descriptor__ser_de_info = {
  name : string option; [@option]  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  serialization_library : string option; [@option]
      (** serialization_library *)
}
[@@deriving yojson_of]
(** aws_glue_partition__storage_descriptor__ser_de_info *)

type aws_glue_partition__storage_descriptor__skewed_info = {
  skewed_column_names : string list option; [@option]
      (** skewed_column_names *)
  skewed_column_value_location_maps : (string * string) list option;
      [@option]
      (** skewed_column_value_location_maps *)
  skewed_column_values : string list option; [@option]
      (** skewed_column_values *)
}
[@@deriving yojson_of]
(** aws_glue_partition__storage_descriptor__skewed_info *)

type aws_glue_partition__storage_descriptor__sort_columns = {
  column : string;  (** column *)
  sort_order : float;  (** sort_order *)
}
[@@deriving yojson_of]
(** aws_glue_partition__storage_descriptor__sort_columns *)

type aws_glue_partition__storage_descriptor = {
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
  columns : aws_glue_partition__storage_descriptor__columns list;
  ser_de_info :
    aws_glue_partition__storage_descriptor__ser_de_info list;
  skewed_info :
    aws_glue_partition__storage_descriptor__skewed_info list;
  sort_columns :
    aws_glue_partition__storage_descriptor__sort_columns list;
}
[@@deriving yojson_of]
(** aws_glue_partition__storage_descriptor *)

type aws_glue_partition = {
  database_name : string;  (** database_name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  partition_values : string list;  (** partition_values *)
  table_name : string;  (** table_name *)
  storage_descriptor : aws_glue_partition__storage_descriptor list;
}
[@@deriving yojson_of]
(** aws_glue_partition *)

let aws_glue_partition ?parameters ~database_name ~partition_values
    ~table_name ~storage_descriptor __resource_id =
  let __resource_type = "aws_glue_partition" in
  let __resource =
    {
      database_name;
      parameters;
      partition_values;
      table_name;
      storage_descriptor;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_partition __resource);
  ()
