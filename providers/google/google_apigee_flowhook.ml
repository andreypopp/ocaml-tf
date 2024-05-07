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

type google_apigee_flowhook = {
  continue_on_error : bool prop option; [@option]
  description : string prop option; [@option]
  environment : string prop;
  flow_hook_point : string prop;
  id : string prop option; [@option]
  org_id : string prop;
  sharedflow : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_flowhook) -> ()

let yojson_of_google_apigee_flowhook =
  (function
   | {
       continue_on_error = v_continue_on_error;
       description = v_description;
       environment = v_environment;
       flow_hook_point = v_flow_hook_point;
       id = v_id;
       org_id = v_org_id;
       sharedflow = v_sharedflow;
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
         let arg = yojson_of_prop yojson_of_string v_sharedflow in
         ("sharedflow", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_flow_hook_point
         in
         ("flow_hook_point", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_environment in
         ("environment", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_continue_on_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "continue_on_error", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_apigee_flowhook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_flowhook

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_flowhook ?continue_on_error ?description ?id
    ?timeouts ~environment ~flow_hook_point ~org_id ~sharedflow () :
    google_apigee_flowhook =
  {
    continue_on_error;
    description;
    environment;
    flow_hook_point;
    id;
    org_id;
    sharedflow;
    timeouts;
  }

type t = {
  tf_name : string;
  continue_on_error : bool prop;
  description : string prop;
  environment : string prop;
  flow_hook_point : string prop;
  id : string prop;
  org_id : string prop;
  sharedflow : string prop;
}

let make ?continue_on_error ?description ?id ?timeouts ~environment
    ~flow_hook_point ~org_id ~sharedflow __id =
  let __type = "google_apigee_flowhook" in
  let __attrs =
    ({
       tf_name = __id;
       continue_on_error =
         Prop.computed __type __id "continue_on_error";
       description = Prop.computed __type __id "description";
       environment = Prop.computed __type __id "environment";
       flow_hook_point = Prop.computed __type __id "flow_hook_point";
       id = Prop.computed __type __id "id";
       org_id = Prop.computed __type __id "org_id";
       sharedflow = Prop.computed __type __id "sharedflow";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_flowhook
        (google_apigee_flowhook ?continue_on_error ?description ?id
           ?timeouts ~environment ~flow_hook_point ~org_id
           ~sharedflow ());
    attrs = __attrs;
  }

let register ?tf_module ?continue_on_error ?description ?id ?timeouts
    ~environment ~flow_hook_point ~org_id ~sharedflow __id =
  let (r : _ Tf_core.resource) =
    make ?continue_on_error ?description ?id ?timeouts ~environment
      ~flow_hook_point ~org_id ~sharedflow __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
