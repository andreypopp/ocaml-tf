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

type google_firestore_database = {
  app_engine_integration_mode : string prop option; [@option]
  concurrency_mode : string prop option; [@option]
  delete_protection_state : string prop option; [@option]
  deletion_policy : string prop option; [@option]
  id : string prop option; [@option]
  location_id : string prop;
  name : string prop;
  point_in_time_recovery_enablement : string prop option; [@option]
  project : string prop option; [@option]
  type_ : string prop; [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_firestore_database) -> ()

let yojson_of_google_firestore_database =
  (function
   | {
       app_engine_integration_mode = v_app_engine_integration_mode;
       concurrency_mode = v_concurrency_mode;
       delete_protection_state = v_delete_protection_state;
       deletion_policy = v_deletion_policy;
       id = v_id;
       location_id = v_location_id;
       name = v_name;
       point_in_time_recovery_enablement =
         v_point_in_time_recovery_enablement;
       project = v_project;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_point_in_time_recovery_enablement with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "point_in_time_recovery_enablement", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location_id in
         ("location_id", arg) :: bnds
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
         match v_deletion_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deletion_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_protection_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete_protection_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_concurrency_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "concurrency_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_engine_integration_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_engine_integration_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_firestore_database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_firestore_database

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_firestore_database ?app_engine_integration_mode
    ?concurrency_mode ?delete_protection_state ?deletion_policy ?id
    ?point_in_time_recovery_enablement ?project ?timeouts
    ~location_id ~name ~type_ () : google_firestore_database =
  {
    app_engine_integration_mode;
    concurrency_mode;
    delete_protection_state;
    deletion_policy;
    id;
    location_id;
    name;
    point_in_time_recovery_enablement;
    project;
    type_;
    timeouts;
  }

type t = {
  tf_name : string;
  app_engine_integration_mode : string prop;
  concurrency_mode : string prop;
  create_time : string prop;
  delete_protection_state : string prop;
  deletion_policy : string prop;
  earliest_version_time : string prop;
  etag : string prop;
  id : string prop;
  key_prefix : string prop;
  location_id : string prop;
  name : string prop;
  point_in_time_recovery_enablement : string prop;
  project : string prop;
  type_ : string prop;
  uid : string prop;
  update_time : string prop;
  version_retention_period : string prop;
}

let make ?app_engine_integration_mode ?concurrency_mode
    ?delete_protection_state ?deletion_policy ?id
    ?point_in_time_recovery_enablement ?project ?timeouts
    ~location_id ~name ~type_ __id =
  let __type = "google_firestore_database" in
  let __attrs =
    ({
       tf_name = __id;
       app_engine_integration_mode =
         Prop.computed __type __id "app_engine_integration_mode";
       concurrency_mode =
         Prop.computed __type __id "concurrency_mode";
       create_time = Prop.computed __type __id "create_time";
       delete_protection_state =
         Prop.computed __type __id "delete_protection_state";
       deletion_policy = Prop.computed __type __id "deletion_policy";
       earliest_version_time =
         Prop.computed __type __id "earliest_version_time";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       key_prefix = Prop.computed __type __id "key_prefix";
       location_id = Prop.computed __type __id "location_id";
       name = Prop.computed __type __id "name";
       point_in_time_recovery_enablement =
         Prop.computed __type __id
           "point_in_time_recovery_enablement";
       project = Prop.computed __type __id "project";
       type_ = Prop.computed __type __id "type";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       version_retention_period =
         Prop.computed __type __id "version_retention_period";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_firestore_database
        (google_firestore_database ?app_engine_integration_mode
           ?concurrency_mode ?delete_protection_state
           ?deletion_policy ?id ?point_in_time_recovery_enablement
           ?project ?timeouts ~location_id ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?app_engine_integration_mode
    ?concurrency_mode ?delete_protection_state ?deletion_policy ?id
    ?point_in_time_recovery_enablement ?project ?timeouts
    ~location_id ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?app_engine_integration_mode ?concurrency_mode
      ?delete_protection_state ?deletion_policy ?id
      ?point_in_time_recovery_enablement ?project ?timeouts
      ~location_id ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
