(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type capacity_specification = {
  read_capacity_units : float prop option; [@option]
      (** read_capacity_units *)
  throughput_mode : string prop option; [@option]
      (** throughput_mode *)
  write_capacity_units : float prop option; [@option]
      (** write_capacity_units *)
}
[@@deriving yojson_of]
(** capacity_specification *)

type client_side_timestamps = { status : string prop  (** status *) }
[@@deriving yojson_of]
(** client_side_timestamps *)

type comment = {
  message : string prop option; [@option]  (** message *)
}
[@@deriving yojson_of]
(** comment *)

type encryption_specification = {
  kms_key_identifier : string prop option; [@option]
      (** kms_key_identifier *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** encryption_specification *)

type point_in_time_recovery = {
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** point_in_time_recovery *)

type schema_definition__clustering_key = {
  name : string prop;  (** name *)
  order_by : string prop;  (** order_by *)
}
[@@deriving yojson_of]
(** schema_definition__clustering_key *)

type schema_definition__column = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** schema_definition__column *)

type schema_definition__partition_key = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** schema_definition__partition_key *)

type schema_definition__static_column = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** schema_definition__static_column *)

type schema_definition = {
  clustering_key : schema_definition__clustering_key list;
  column : schema_definition__column list;
  partition_key : schema_definition__partition_key list;
  static_column : schema_definition__static_column list;
}
[@@deriving yojson_of]
(** schema_definition *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type ttl = { status : string prop  (** status *) }
[@@deriving yojson_of]
(** ttl *)

type aws_keyspaces_table = {
  default_time_to_live : float prop option; [@option]
      (** default_time_to_live *)
  id : string prop option; [@option]  (** id *)
  keyspace_name : string prop;  (** keyspace_name *)
  table_name : string prop;  (** table_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  capacity_specification : capacity_specification list;
  client_side_timestamps : client_side_timestamps list;
  comment : comment list;
  encryption_specification : encryption_specification list;
  point_in_time_recovery : point_in_time_recovery list;
  schema_definition : schema_definition list;
  timeouts : timeouts option;
  ttl : ttl list;
}
[@@deriving yojson_of]
(** aws_keyspaces_table *)

let capacity_specification ?read_capacity_units ?throughput_mode
    ?write_capacity_units () : capacity_specification =
  { read_capacity_units; throughput_mode; write_capacity_units }

let client_side_timestamps ~status () : client_side_timestamps =
  { status }

let comment ?message () : comment = { message }

let encryption_specification ?kms_key_identifier ?type_ () :
    encryption_specification =
  { kms_key_identifier; type_ }

let point_in_time_recovery ?status () : point_in_time_recovery =
  { status }

let schema_definition__clustering_key ~name ~order_by () :
    schema_definition__clustering_key =
  { name; order_by }

let schema_definition__column ~name ~type_ () :
    schema_definition__column =
  { name; type_ }

let schema_definition__partition_key ~name () :
    schema_definition__partition_key =
  { name }

let schema_definition__static_column ~name () :
    schema_definition__static_column =
  { name }

let schema_definition ~clustering_key ~column ~partition_key
    ~static_column () : schema_definition =
  { clustering_key; column; partition_key; static_column }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let ttl ~status () : ttl = { status }

let aws_keyspaces_table ?default_time_to_live ?id ?tags ?tags_all
    ?timeouts ~keyspace_name ~table_name ~capacity_specification
    ~client_side_timestamps ~comment ~encryption_specification
    ~point_in_time_recovery ~schema_definition ~ttl () :
    aws_keyspaces_table =
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

type t = {
  arn : string prop;
  default_time_to_live : float prop;
  id : string prop;
  keyspace_name : string prop;
  table_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?default_time_to_live ?id ?tags ?tags_all
    ?timeouts ~keyspace_name ~table_name ~capacity_specification
    ~client_side_timestamps ~comment ~encryption_specification
    ~point_in_time_recovery ~schema_definition ~ttl __resource_id =
  let __resource_type = "aws_keyspaces_table" in
  let __resource =
    aws_keyspaces_table ?default_time_to_live ?id ?tags ?tags_all
      ?timeouts ~keyspace_name ~table_name ~capacity_specification
      ~client_side_timestamps ~comment ~encryption_specification
      ~point_in_time_recovery ~schema_definition ~ttl ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_keyspaces_table __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       default_time_to_live =
         Prop.computed __resource_type __resource_id
           "default_time_to_live";
       id = Prop.computed __resource_type __resource_id "id";
       keyspace_name =
         Prop.computed __resource_type __resource_id "keyspace_name";
       table_name =
         Prop.computed __resource_type __resource_id "table_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
