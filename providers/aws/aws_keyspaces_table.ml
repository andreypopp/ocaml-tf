(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type capacity_specification = {
  read_capacity_units : float prop option; [@option]
  throughput_mode : string prop option; [@option]
  write_capacity_units : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : capacity_specification) -> ()

let yojson_of_capacity_specification =
  (function
   | {
       read_capacity_units = v_read_capacity_units;
       throughput_mode = v_throughput_mode;
       write_capacity_units = v_write_capacity_units;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_write_capacity_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "write_capacity_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_throughput_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "throughput_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_capacity_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "read_capacity_units", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : capacity_specification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity_specification

[@@@deriving.end]

type client_side_timestamps = { status : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : client_side_timestamps) -> ()

let yojson_of_client_side_timestamps =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : client_side_timestamps -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_side_timestamps

[@@@deriving.end]

type comment = { message : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : comment) -> ()

let yojson_of_comment =
  (function
   | { message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : comment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_comment

[@@@deriving.end]

type encryption_specification = {
  kms_key_identifier : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_specification) -> ()

let yojson_of_encryption_specification =
  (function
   | { kms_key_identifier = v_kms_key_identifier; type_ = v_type_ }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_identifier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_specification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_specification

[@@@deriving.end]

type point_in_time_recovery = {
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : point_in_time_recovery) -> ()

let yojson_of_point_in_time_recovery =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : point_in_time_recovery -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_point_in_time_recovery

[@@@deriving.end]

type schema_definition__clustering_key = {
  name : string prop;
  order_by : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema_definition__clustering_key) -> ()

let yojson_of_schema_definition__clustering_key =
  (function
   | { name = v_name; order_by = v_order_by } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_order_by in
         ("order_by", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : schema_definition__clustering_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema_definition__clustering_key

[@@@deriving.end]

type schema_definition__column = {
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema_definition__column) -> ()

let yojson_of_schema_definition__column =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : schema_definition__column -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema_definition__column

[@@@deriving.end]

type schema_definition__partition_key = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : schema_definition__partition_key) -> ()

let yojson_of_schema_definition__partition_key =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : schema_definition__partition_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema_definition__partition_key

[@@@deriving.end]

type schema_definition__static_column = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : schema_definition__static_column) -> ()

let yojson_of_schema_definition__static_column =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : schema_definition__static_column ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema_definition__static_column

[@@@deriving.end]

type schema_definition = {
  clustering_key : schema_definition__clustering_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  column : schema_definition__column list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  partition_key : schema_definition__partition_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  static_column : schema_definition__static_column list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema_definition) -> ()

let yojson_of_schema_definition =
  (function
   | {
       clustering_key = v_clustering_key;
       column = v_column;
       partition_key = v_partition_key;
       static_column = v_static_column;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_static_column then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_schema_definition__static_column)
               v_static_column
           in
           let bnd = "static_column", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_partition_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_schema_definition__partition_key)
               v_partition_key
           in
           let bnd = "partition_key", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_column then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schema_definition__column)
               v_column
           in
           let bnd = "column", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_clustering_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_schema_definition__clustering_key)
               v_clustering_key
           in
           let bnd = "clustering_key", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : schema_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema_definition

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type ttl = { status : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : ttl) -> ()

let yojson_of_ttl =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : ttl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ttl

[@@@deriving.end]

type aws_keyspaces_table = {
  default_time_to_live : float prop option; [@option]
  id : string prop option; [@option]
  keyspace_name : string prop;
  table_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  capacity_specification : capacity_specification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  client_side_timestamps : client_side_timestamps list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  comment : comment list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  encryption_specification : encryption_specification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  point_in_time_recovery : point_in_time_recovery list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schema_definition : schema_definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  ttl : ttl list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_keyspaces_table) -> ()

let yojson_of_aws_keyspaces_table =
  (function
   | {
       default_time_to_live = v_default_time_to_live;
       id = v_id;
       keyspace_name = v_keyspace_name;
       table_name = v_table_name;
       tags = v_tags;
       tags_all = v_tags_all;
       capacity_specification = v_capacity_specification;
       client_side_timestamps = v_client_side_timestamps;
       comment = v_comment;
       encryption_specification = v_encryption_specification;
       point_in_time_recovery = v_point_in_time_recovery;
       schema_definition = v_schema_definition;
       timeouts = v_timeouts;
       ttl = v_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ttl then bnds
         else
           let arg = (yojson_of_list yojson_of_ttl) v_ttl in
           let bnd = "ttl", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_schema_definition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schema_definition)
               v_schema_definition
           in
           let bnd = "schema_definition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_point_in_time_recovery then bnds
         else
           let arg =
             (yojson_of_list yojson_of_point_in_time_recovery)
               v_point_in_time_recovery
           in
           let bnd = "point_in_time_recovery", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_specification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_specification)
               v_encryption_specification
           in
           let bnd = "encryption_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_comment then bnds
         else
           let arg = (yojson_of_list yojson_of_comment) v_comment in
           let bnd = "comment", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_client_side_timestamps then bnds
         else
           let arg =
             (yojson_of_list yojson_of_client_side_timestamps)
               v_client_side_timestamps
           in
           let bnd = "client_side_timestamps", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_capacity_specification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_capacity_specification)
               v_capacity_specification
           in
           let bnd = "capacity_specification", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_keyspace_name in
         ("keyspace_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_time_to_live with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_time_to_live", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_keyspaces_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_keyspaces_table

[@@@deriving.end]

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

let schema_definition ?(clustering_key = []) ~column ~partition_key
    ~static_column () : schema_definition =
  { clustering_key; column; partition_key; static_column }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let ttl ~status () : ttl = { status }

let aws_keyspaces_table ?default_time_to_live ?id ?tags ?tags_all
    ?(capacity_specification = []) ?(client_side_timestamps = [])
    ?(comment = []) ?(encryption_specification = [])
    ?(point_in_time_recovery = []) ?timeouts ?(ttl = [])
    ~keyspace_name ~table_name ~schema_definition () :
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
  tf_name : string;
  arn : string prop;
  default_time_to_live : float prop;
  id : string prop;
  keyspace_name : string prop;
  table_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?default_time_to_live ?id ?tags ?tags_all
    ?(capacity_specification = []) ?(client_side_timestamps = [])
    ?(comment = []) ?(encryption_specification = [])
    ?(point_in_time_recovery = []) ?timeouts ?(ttl = [])
    ~keyspace_name ~table_name ~schema_definition __id =
  let __type = "aws_keyspaces_table" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       default_time_to_live =
         Prop.computed __type __id "default_time_to_live";
       id = Prop.computed __type __id "id";
       keyspace_name = Prop.computed __type __id "keyspace_name";
       table_name = Prop.computed __type __id "table_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_keyspaces_table
        (aws_keyspaces_table ?default_time_to_live ?id ?tags
           ?tags_all ~capacity_specification ~client_side_timestamps
           ~comment ~encryption_specification ~point_in_time_recovery
           ?timeouts ~ttl ~keyspace_name ~table_name
           ~schema_definition ());
    attrs = __attrs;
  }

let register ?tf_module ?default_time_to_live ?id ?tags ?tags_all
    ?(capacity_specification = []) ?(client_side_timestamps = [])
    ?(comment = []) ?(encryption_specification = [])
    ?(point_in_time_recovery = []) ?timeouts ?(ttl = [])
    ~keyspace_name ~table_name ~schema_definition __id =
  let (r : _ Tf_core.resource) =
    make ?default_time_to_live ?id ?tags ?tags_all
      ~capacity_specification ~client_side_timestamps ~comment
      ~encryption_specification ~point_in_time_recovery ?timeouts
      ~ttl ~keyspace_name ~table_name ~schema_definition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
