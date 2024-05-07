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

type google_iam_workload_identity_pool = {
  description : string prop option; [@option]
  disabled : bool prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  workload_identity_pool_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iam_workload_identity_pool) -> ()

let yojson_of_google_iam_workload_identity_pool =
  (function
   | {
       description = v_description;
       disabled = v_disabled;
       display_name = v_display_name;
       id = v_id;
       project = v_project;
       workload_identity_pool_id = v_workload_identity_pool_id;
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
           yojson_of_prop yojson_of_string
             v_workload_identity_pool_id
         in
         ("workload_identity_pool_id", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_iam_workload_identity_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iam_workload_identity_pool

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_iam_workload_identity_pool ?description ?disabled
    ?display_name ?id ?project ?timeouts ~workload_identity_pool_id
    () : google_iam_workload_identity_pool =
  {
    description;
    disabled;
    display_name;
    id;
    project;
    workload_identity_pool_id;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  workload_identity_pool_id : string prop;
}

let make ?description ?disabled ?display_name ?id ?project ?timeouts
    ~workload_identity_pool_id __id =
  let __type = "google_iam_workload_identity_pool" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       workload_identity_pool_id =
         Prop.computed __type __id "workload_identity_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iam_workload_identity_pool
        (google_iam_workload_identity_pool ?description ?disabled
           ?display_name ?id ?project ?timeouts
           ~workload_identity_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disabled ?display_name ?id
    ?project ?timeouts ~workload_identity_pool_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disabled ?display_name ?id ?project ?timeouts
      ~workload_identity_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
