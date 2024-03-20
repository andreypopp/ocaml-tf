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

type google_apigee_sharedflow_deployment = {
  environment : string prop;
  id : string prop option; [@option]
  org_id : string prop;
  revision : string prop;
  service_account : string prop option; [@option]
  sharedflow_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_sharedflow_deployment) -> ()

let yojson_of_google_apigee_sharedflow_deployment =
  (function
   | {
       environment = v_environment;
       id = v_id;
       org_id = v_org_id;
       revision = v_revision;
       service_account = v_service_account;
       sharedflow_id = v_sharedflow_id;
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
         let arg = yojson_of_prop yojson_of_string v_sharedflow_id in
         ("sharedflow_id", arg) :: bnds
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_revision in
         ("revision", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_org_id in
         ("org_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_environment in
         ("environment", arg) :: bnds
       in
       `Assoc bnds
    : google_apigee_sharedflow_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_sharedflow_deployment

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apigee_sharedflow_deployment ?id ?service_account
    ?timeouts ~environment ~org_id ~revision ~sharedflow_id () :
    google_apigee_sharedflow_deployment =
  {
    environment;
    id;
    org_id;
    revision;
    service_account;
    sharedflow_id;
    timeouts;
  }

type t = {
  environment : string prop;
  id : string prop;
  org_id : string prop;
  revision : string prop;
  service_account : string prop;
  sharedflow_id : string prop;
}

let make ?id ?service_account ?timeouts ~environment ~org_id
    ~revision ~sharedflow_id __id =
  let __type = "google_apigee_sharedflow_deployment" in
  let __attrs =
    ({
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       org_id = Prop.computed __type __id "org_id";
       revision = Prop.computed __type __id "revision";
       service_account = Prop.computed __type __id "service_account";
       sharedflow_id = Prop.computed __type __id "sharedflow_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_sharedflow_deployment
        (google_apigee_sharedflow_deployment ?id ?service_account
           ?timeouts ~environment ~org_id ~revision ~sharedflow_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?service_account ?timeouts ~environment
    ~org_id ~revision ~sharedflow_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?service_account ?timeouts ~environment ~org_id
      ~revision ~sharedflow_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
