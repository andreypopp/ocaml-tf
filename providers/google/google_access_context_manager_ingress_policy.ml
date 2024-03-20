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

type google_access_context_manager_ingress_policy = {
  id : string prop option; [@option]
  ingress_policy_name : string prop;
  resource : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_access_context_manager_ingress_policy) -> ()

let yojson_of_google_access_context_manager_ingress_policy =
  (function
   | {
       id = v_id;
       ingress_policy_name = v_ingress_policy_name;
       resource = v_resource;
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
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ingress_policy_name
         in
         ("ingress_policy_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_access_context_manager_ingress_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_access_context_manager_ingress_policy

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_access_context_manager_ingress_policy ?id ?timeouts
    ~ingress_policy_name ~resource () :
    google_access_context_manager_ingress_policy =
  { id; ingress_policy_name; resource; timeouts }

type t = {
  id : string prop;
  ingress_policy_name : string prop;
  resource : string prop;
}

let make ?id ?timeouts ~ingress_policy_name ~resource __id =
  let __type = "google_access_context_manager_ingress_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       ingress_policy_name =
         Prop.computed __type __id "ingress_policy_name";
       resource = Prop.computed __type __id "resource";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_ingress_policy
        (google_access_context_manager_ingress_policy ?id ?timeouts
           ~ingress_policy_name ~resource ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~ingress_policy_name ~resource
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~ingress_policy_name ~resource __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
