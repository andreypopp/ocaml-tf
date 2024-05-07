(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_compute_shared_vpc_service_project = {
  deletion_policy : string prop option; [@option]
  host_project : string prop;
  id : string prop option; [@option]
  service_project : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_shared_vpc_service_project) -> ()

let yojson_of_google_compute_shared_vpc_service_project =
  (function
   | {
       deletion_policy = v_deletion_policy;
       host_project = v_host_project;
       id = v_id;
       service_project = v_service_project;
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
         let arg =
           yojson_of_prop yojson_of_string v_service_project
         in
         ("service_project", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_host_project in
         ("host_project", arg) :: bnds
       in
       let bnds =
         match v_deletion_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deletion_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_shared_vpc_service_project ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_shared_vpc_service_project

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_shared_vpc_service_project ?deletion_policy ?id
    ?timeouts ~host_project ~service_project () :
    google_compute_shared_vpc_service_project =
  { deletion_policy; host_project; id; service_project; timeouts }

type t = {
  tf_name : string;
  deletion_policy : string prop;
  host_project : string prop;
  id : string prop;
  service_project : string prop;
}

let make ?deletion_policy ?id ?timeouts ~host_project
    ~service_project __id =
  let __type = "google_compute_shared_vpc_service_project" in
  let __attrs =
    ({
       tf_name = __id;
       deletion_policy = Prop.computed __type __id "deletion_policy";
       host_project = Prop.computed __type __id "host_project";
       id = Prop.computed __type __id "id";
       service_project = Prop.computed __type __id "service_project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_shared_vpc_service_project
        (google_compute_shared_vpc_service_project ?deletion_policy
           ?id ?timeouts ~host_project ~service_project ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_policy ?id ?timeouts ~host_project
    ~service_project __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_policy ?id ?timeouts ~host_project
      ~service_project __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
