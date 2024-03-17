(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_keyspaces_table__capacity_specification = {
  read_capacity_units : float option; [@option]
      (** read_capacity_units *)
  throughput_mode : string option; [@option]  (** throughput_mode *)
  write_capacity_units : float option; [@option]
      (** write_capacity_units *)
}
[@@deriving yojson_of]
(** aws_keyspaces_table__capacity_specification *)

type aws_keyspaces_table__client_side_timestamps = {
  status : string;  (** status *)
}
[@@deriving yojson_of]
(** aws_keyspaces_table__client_side_timestamps *)

type aws_keyspaces_table__comment = {
  message : string option; [@option]  (** message *)
}
[@@deriving yojson_of]
(** aws_keyspaces_table__comment *)

type aws_keyspaces_table__encryption_specification = {
  kms_key_identifier : string option; [@option]
      (** kms_key_identifier *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_keyspaces_table__encryption_specification *)

type aws_keyspaces_table__point_in_time_recovery = {
  status : string option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_keyspaces_table__point_in_time_recovery *)

type aws_keyspaces_table__schema_definition__clustering_key = {
  name : string;  (** name *)
  order_by : string;  (** order_by *)
}
[@@deriving yojson_of]
(** aws_keyspaces_table__schema_definition__clustering_key *)

type aws_keyspaces_table__schema_definition__column = {
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_keyspaces_table__schema_definition__column *)

type aws_keyspaces_table__schema_definition__partition_key = {
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_keyspaces_table__schema_definition__partition_key *)

type aws_keyspaces_table__schema_definition__static_column = {
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_keyspaces_table__schema_definition__static_column *)

type aws_keyspaces_table__schema_definition = {
  clustering_key :
    aws_keyspaces_table__schema_definition__clustering_key list;
  column : aws_keyspaces_table__schema_definition__column list;
  partition_key :
    aws_keyspaces_table__schema_definition__partition_key list;
  static_column :
    aws_keyspaces_table__schema_definition__static_column list;
}
[@@deriving yojson_of]
(** aws_keyspaces_table__schema_definition *)

type aws_keyspaces_table__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_keyspaces_table__timeouts *)

type aws_keyspaces_table__ttl = { status : string  (** status *) }
[@@deriving yojson_of]
(** aws_keyspaces_table__ttl *)

type aws_keyspaces_table = {
  default_time_to_live : float option; [@option]
      (** default_time_to_live *)
  id : string option; [@option]  (** id *)
  keyspace_name : string;  (** keyspace_name *)
  table_name : string;  (** table_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  capacity_specification :
    aws_keyspaces_table__capacity_specification list;
  client_side_timestamps :
    aws_keyspaces_table__client_side_timestamps list;
  comment : aws_keyspaces_table__comment list;
  encryption_specification :
    aws_keyspaces_table__encryption_specification list;
  point_in_time_recovery :
    aws_keyspaces_table__point_in_time_recovery list;
  schema_definition : aws_keyspaces_table__schema_definition list;
  timeouts : aws_keyspaces_table__timeouts option;
  ttl : aws_keyspaces_table__ttl list;
}
[@@deriving yojson_of]
(** aws_keyspaces_table *)

let aws_keyspaces_table ?default_time_to_live ?id ?tags ?tags_all
    ?timeouts ~keyspace_name ~table_name ~capacity_specification
    ~client_side_timestamps ~comment ~encryption_specification
    ~point_in_time_recovery ~schema_definition ~ttl __resource_id =
  let __resource_type = "aws_keyspaces_table" in
  let __resource =
    {
      default_time_to_live;
      id;
      keyspace_name;
      table_name;
      tags;
      tags_all;
      capacity_specification;
      client_side_timestamps;
      comment;
      encryption_specification;
      point_in_time_recovery;
      schema_definition;
      timeouts;
      ttl;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_keyspaces_table __resource);
  ()
