(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type capacity_specification

val capacity_specification :
  ?read_capacity_units:float prop ->
  ?throughput_mode:string prop ->
  ?write_capacity_units:float prop ->
  unit ->
  capacity_specification

type client_side_timestamps

val client_side_timestamps :
  status:string prop -> unit -> client_side_timestamps

type comment

val comment : ?message:string prop -> unit -> comment

type encryption_specification

val encryption_specification :
  ?kms_key_identifier:string prop ->
  ?type_:string prop ->
  unit ->
  encryption_specification

type point_in_time_recovery

val point_in_time_recovery :
  ?status:string prop -> unit -> point_in_time_recovery

type schema_definition__clustering_key

val schema_definition__clustering_key :
  name:string prop ->
  order_by:string prop ->
  unit ->
  schema_definition__clustering_key

type schema_definition__column

val schema_definition__column :
  name:string prop ->
  type_:string prop ->
  unit ->
  schema_definition__column

type schema_definition__partition_key

val schema_definition__partition_key :
  name:string prop -> unit -> schema_definition__partition_key

type schema_definition__static_column

val schema_definition__static_column :
  name:string prop -> unit -> schema_definition__static_column

type schema_definition

val schema_definition :
  clustering_key:schema_definition__clustering_key list ->
  column:schema_definition__column list ->
  partition_key:schema_definition__partition_key list ->
  static_column:schema_definition__static_column list ->
  unit ->
  schema_definition

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type ttl

val ttl : status:string prop -> unit -> ttl

type aws_keyspaces_table

val aws_keyspaces_table :
  ?default_time_to_live:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  keyspace_name:string prop ->
  table_name:string prop ->
  capacity_specification:capacity_specification list ->
  client_side_timestamps:client_side_timestamps list ->
  comment:comment list ->
  encryption_specification:encryption_specification list ->
  point_in_time_recovery:point_in_time_recovery list ->
  schema_definition:schema_definition list ->
  ttl:ttl list ->
  unit ->
  aws_keyspaces_table

val yojson_of_aws_keyspaces_table : aws_keyspaces_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  default_time_to_live : float prop;
  id : string prop;
  keyspace_name : string prop;
  table_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_time_to_live:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  keyspace_name:string prop ->
  table_name:string prop ->
  capacity_specification:capacity_specification list ->
  client_side_timestamps:client_side_timestamps list ->
  comment:comment list ->
  encryption_specification:encryption_specification list ->
  point_in_time_recovery:point_in_time_recovery list ->
  schema_definition:schema_definition list ->
  ttl:ttl list ->
  string ->
  t
