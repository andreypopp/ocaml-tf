(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type global_cluster_members = {
  db_cluster_arn : string prop;
  is_writer : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : global_cluster_members) -> ()

let yojson_of_global_cluster_members =
  (function
   | { db_cluster_arn = v_db_cluster_arn; is_writer = v_is_writer }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_writer in
         ("is_writer", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_db_cluster_arn
         in
         ("db_cluster_arn", arg) :: bnds
       in
       `Assoc bnds
    : global_cluster_members -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_global_cluster_members

[@@@deriving.end]

type aws_rds_global_cluster = {
  database_name : string prop option; [@option]
  deletion_protection : bool prop option; [@option]
  engine : string prop option; [@option]
  engine_version : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  global_cluster_identifier : string prop;
  id : string prop option; [@option]
  source_db_cluster_identifier : string prop option; [@option]
  storage_encrypted : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rds_global_cluster) -> ()

let yojson_of_aws_rds_global_cluster =
  (function
   | {
       database_name = v_database_name;
       deletion_protection = v_deletion_protection;
       engine = v_engine;
       engine_version = v_engine_version;
       force_destroy = v_force_destroy;
       global_cluster_identifier = v_global_cluster_identifier;
       id = v_id;
       source_db_cluster_identifier = v_source_db_cluster_identifier;
       storage_encrypted = v_storage_encrypted;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_storage_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "storage_encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_db_cluster_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_db_cluster_identifier", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_global_cluster_identifier
         in
         ("global_cluster_identifier", arg) :: bnds
       in
       let bnds =
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_engine_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deletion_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_rds_global_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rds_global_cluster

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_rds_global_cluster ?database_name ?deletion_protection
    ?engine ?engine_version ?force_destroy ?id
    ?source_db_cluster_identifier ?storage_encrypted ?timeouts
    ~global_cluster_identifier () : aws_rds_global_cluster =
  {
    database_name;
    deletion_protection;
    engine;
    engine_version;
    force_destroy;
    global_cluster_identifier;
    id;
    source_db_cluster_identifier;
    storage_encrypted;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  database_name : string prop;
  deletion_protection : bool prop;
  engine : string prop;
  engine_version : string prop;
  engine_version_actual : string prop;
  force_destroy : bool prop;
  global_cluster_identifier : string prop;
  global_cluster_members : global_cluster_members list prop;
  global_cluster_resource_id : string prop;
  id : string prop;
  source_db_cluster_identifier : string prop;
  storage_encrypted : bool prop;
}

let make ?database_name ?deletion_protection ?engine ?engine_version
    ?force_destroy ?id ?source_db_cluster_identifier
    ?storage_encrypted ?timeouts ~global_cluster_identifier __id =
  let __type = "aws_rds_global_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       database_name = Prop.computed __type __id "database_name";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       engine = Prop.computed __type __id "engine";
       engine_version = Prop.computed __type __id "engine_version";
       engine_version_actual =
         Prop.computed __type __id "engine_version_actual";
       force_destroy = Prop.computed __type __id "force_destroy";
       global_cluster_identifier =
         Prop.computed __type __id "global_cluster_identifier";
       global_cluster_members =
         Prop.computed __type __id "global_cluster_members";
       global_cluster_resource_id =
         Prop.computed __type __id "global_cluster_resource_id";
       id = Prop.computed __type __id "id";
       source_db_cluster_identifier =
         Prop.computed __type __id "source_db_cluster_identifier";
       storage_encrypted =
         Prop.computed __type __id "storage_encrypted";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_global_cluster
        (aws_rds_global_cluster ?database_name ?deletion_protection
           ?engine ?engine_version ?force_destroy ?id
           ?source_db_cluster_identifier ?storage_encrypted ?timeouts
           ~global_cluster_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?database_name ?deletion_protection ?engine
    ?engine_version ?force_destroy ?id ?source_db_cluster_identifier
    ?storage_encrypted ?timeouts ~global_cluster_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?database_name ?deletion_protection ?engine ?engine_version
      ?force_destroy ?id ?source_db_cluster_identifier
      ?storage_encrypted ?timeouts ~global_cluster_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
