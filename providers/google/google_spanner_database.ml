(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_config = { kms_key_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_config) -> ()

let yojson_of_encryption_config =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : encryption_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_config

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

type google_spanner_database = {
  database_dialect : string prop option; [@option]
  ddl : string prop list option; [@option]
  deletion_protection : bool prop option; [@option]
  enable_drop_protection : bool prop option; [@option]
  id : string prop option; [@option]
  instance : string prop;
  name : string prop;
  project : string prop option; [@option]
  version_retention_period : string prop option; [@option]
  encryption_config : encryption_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_spanner_database) -> ()

let yojson_of_google_spanner_database =
  (function
   | {
       database_dialect = v_database_dialect;
       ddl = v_ddl;
       deletion_protection = v_deletion_protection;
       enable_drop_protection = v_enable_drop_protection;
       id = v_id;
       instance = v_instance;
       name = v_name;
       project = v_project;
       version_retention_period = v_version_retention_period;
       encryption_config = v_encryption_config;
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
         if Stdlib.( = ) [] v_encryption_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_config)
               v_encryption_config
           in
           let bnd = "encryption_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version_retention_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_retention_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
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
         match v_enable_drop_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_drop_protection", arg in
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
         match v_ddl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ddl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_dialect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_dialect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_spanner_database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_spanner_database

[@@@deriving.end]

let encryption_config ~kms_key_name () : encryption_config =
  { kms_key_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_spanner_database ?database_dialect ?ddl
    ?deletion_protection ?enable_drop_protection ?id ?project
    ?version_retention_period ?(encryption_config = []) ?timeouts
    ~instance ~name () : google_spanner_database =
  {
    database_dialect;
    ddl;
    deletion_protection;
    enable_drop_protection;
    id;
    instance;
    name;
    project;
    version_retention_period;
    encryption_config;
    timeouts;
  }

type t = {
  tf_name : string;
  database_dialect : string prop;
  ddl : string list prop;
  deletion_protection : bool prop;
  enable_drop_protection : bool prop;
  id : string prop;
  instance : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  version_retention_period : string prop;
}

let make ?database_dialect ?ddl ?deletion_protection
    ?enable_drop_protection ?id ?project ?version_retention_period
    ?(encryption_config = []) ?timeouts ~instance ~name __id =
  let __type = "google_spanner_database" in
  let __attrs =
    ({
       tf_name = __id;
       database_dialect =
         Prop.computed __type __id "database_dialect";
       ddl = Prop.computed __type __id "ddl";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       enable_drop_protection =
         Prop.computed __type __id "enable_drop_protection";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       version_retention_period =
         Prop.computed __type __id "version_retention_period";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_spanner_database
        (google_spanner_database ?database_dialect ?ddl
           ?deletion_protection ?enable_drop_protection ?id ?project
           ?version_retention_period ~encryption_config ?timeouts
           ~instance ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?database_dialect ?ddl ?deletion_protection
    ?enable_drop_protection ?id ?project ?version_retention_period
    ?(encryption_config = []) ?timeouts ~instance ~name __id =
  let (r : _ Tf_core.resource) =
    make ?database_dialect ?ddl ?deletion_protection
      ?enable_drop_protection ?id ?project ?version_retention_period
      ~encryption_config ?timeouts ~instance ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
