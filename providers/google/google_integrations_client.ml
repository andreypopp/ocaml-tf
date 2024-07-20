(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloud_kms_config = {
  key : string prop;
  key_version : string prop option; [@option]
  kms_location : string prop;
  kms_project_id : string prop option; [@option]
  kms_ring : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloud_kms_config) -> ()

let yojson_of_cloud_kms_config =
  (function
   | {
       key = v_key;
       key_version = v_key_version;
       kms_location = v_kms_location;
       kms_project_id = v_kms_project_id;
       kms_ring = v_kms_ring;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_ring in
         ("kms_ring", arg) :: bnds
       in
       let bnds =
         match v_kms_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_project_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_location in
         ("kms_location", arg) :: bnds
       in
       let bnds =
         match v_key_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : cloud_kms_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_kms_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_integrations_client = {
  create_sample_integrations : bool prop option; [@option]
  create_sample_workflows : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  provision_gmek : bool prop option; [@option]
  run_as_service_account : string prop option; [@option]
  cloud_kms_config : cloud_kms_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_integrations_client) -> ()

let yojson_of_google_integrations_client =
  (function
   | {
       create_sample_integrations = v_create_sample_integrations;
       create_sample_workflows = v_create_sample_workflows;
       id = v_id;
       location = v_location;
       project = v_project;
       provision_gmek = v_provision_gmek;
       run_as_service_account = v_run_as_service_account;
       cloud_kms_config = v_cloud_kms_config;
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
         if Stdlib.( = ) [] v_cloud_kms_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloud_kms_config)
               v_cloud_kms_config
           in
           let bnd = "cloud_kms_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_run_as_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_as_service_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provision_gmek with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "provision_gmek", arg in
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_create_sample_workflows with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_sample_workflows", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_sample_integrations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_sample_integrations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_integrations_client -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_integrations_client

[@@@deriving.end]

let cloud_kms_config ?key_version ?kms_project_id ~key ~kms_location
    ~kms_ring () : cloud_kms_config =
  { key; key_version; kms_location; kms_project_id; kms_ring }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_integrations_client ?create_sample_integrations
    ?create_sample_workflows ?id ?project ?provision_gmek
    ?run_as_service_account ?(cloud_kms_config = []) ?timeouts
    ~location () : google_integrations_client =
  {
    create_sample_integrations;
    create_sample_workflows;
    id;
    location;
    project;
    provision_gmek;
    run_as_service_account;
    cloud_kms_config;
    timeouts;
  }

type t = {
  tf_name : string;
  create_sample_integrations : bool prop;
  create_sample_workflows : bool prop;
  id : string prop;
  location : string prop;
  project : string prop;
  provision_gmek : bool prop;
  run_as_service_account : string prop;
}

let make ?create_sample_integrations ?create_sample_workflows ?id
    ?project ?provision_gmek ?run_as_service_account
    ?(cloud_kms_config = []) ?timeouts ~location __id =
  let __type = "google_integrations_client" in
  let __attrs =
    ({
       tf_name = __id;
       create_sample_integrations =
         Prop.computed __type __id "create_sample_integrations";
       create_sample_workflows =
         Prop.computed __type __id "create_sample_workflows";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       project = Prop.computed __type __id "project";
       provision_gmek = Prop.computed __type __id "provision_gmek";
       run_as_service_account =
         Prop.computed __type __id "run_as_service_account";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_integrations_client
        (google_integrations_client ?create_sample_integrations
           ?create_sample_workflows ?id ?project ?provision_gmek
           ?run_as_service_account ~cloud_kms_config ?timeouts
           ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?create_sample_integrations
    ?create_sample_workflows ?id ?project ?provision_gmek
    ?run_as_service_account ?(cloud_kms_config = []) ?timeouts
    ~location __id =
  let (r : _ Tf_core.resource) =
    make ?create_sample_integrations ?create_sample_workflows ?id
      ?project ?provision_gmek ?run_as_service_account
      ~cloud_kms_config ?timeouts ~location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
