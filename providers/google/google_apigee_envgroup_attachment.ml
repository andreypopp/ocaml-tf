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

type google_apigee_envgroup_attachment = {
  envgroup_id : string prop;
  environment : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_envgroup_attachment) -> ()

let yojson_of_google_apigee_envgroup_attachment =
  (function
   | {
       envgroup_id = v_envgroup_id;
       environment = v_environment;
       id = v_id;
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_envgroup_id in
         ("envgroup_id", arg) :: bnds
       in
       `Assoc bnds
    : google_apigee_envgroup_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_envgroup_attachment

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_envgroup_attachment ?id ?timeouts ~envgroup_id
    ~environment () : google_apigee_envgroup_attachment =
  { envgroup_id; environment; id; timeouts }

type t = {
  envgroup_id : string prop;
  environment : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~envgroup_id ~environment __id =
  let __type = "google_apigee_envgroup_attachment" in
  let __attrs =
    ({
       envgroup_id = Prop.computed __type __id "envgroup_id";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_envgroup_attachment
        (google_apigee_envgroup_attachment ?id ?timeouts ~envgroup_id
           ~environment ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~envgroup_id ~environment __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~envgroup_id ~environment __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
