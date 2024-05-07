(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type role = { predefined_role : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : role) -> ()

let yojson_of_role =
  (function
   | { predefined_role = v_predefined_role } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_predefined_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "predefined_role", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_role

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

type state = { code : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : state) -> ()

let yojson_of_state =
  (function
   | { code = v_code } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_state

[@@@deriving.end]

type google_gke_hub_scope_rbac_role_binding = {
  group : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  project : string prop option; [@option]
  scope_id : string prop;
  scope_rbac_role_binding_id : string prop;
  user : string prop option; [@option]
  role : role list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_gke_hub_scope_rbac_role_binding) -> ()

let yojson_of_google_gke_hub_scope_rbac_role_binding =
  (function
   | {
       group = v_group;
       id = v_id;
       labels = v_labels;
       project = v_project;
       scope_id = v_scope_id;
       scope_rbac_role_binding_id = v_scope_rbac_role_binding_id;
       user = v_user;
       role = v_role;
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
         let arg = yojson_of_list yojson_of_role v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         match v_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_scope_rbac_role_binding_id
         in
         ("scope_rbac_role_binding_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope_id in
         ("scope_id", arg) :: bnds
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
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
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
         match v_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_gke_hub_scope_rbac_role_binding ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_gke_hub_scope_rbac_role_binding

[@@@deriving.end]

let role ?predefined_role () : role = { predefined_role }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_hub_scope_rbac_role_binding ?group ?id ?labels
    ?project ?user ?timeouts ~scope_id ~scope_rbac_role_binding_id
    ~role () : google_gke_hub_scope_rbac_role_binding =
  {
    group;
    id;
    labels;
    project;
    scope_id;
    scope_rbac_role_binding_id;
    user;
    role;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  delete_time : string prop;
  effective_labels : (string * string) list prop;
  group : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  scope_id : string prop;
  scope_rbac_role_binding_id : string prop;
  state : state list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
  user : string prop;
}

let make ?group ?id ?labels ?project ?user ?timeouts ~scope_id
    ~scope_rbac_role_binding_id ~role __id =
  let __type = "google_gke_hub_scope_rbac_role_binding" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       scope_id = Prop.computed __type __id "scope_id";
       scope_rbac_role_binding_id =
         Prop.computed __type __id "scope_rbac_role_binding_id";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_scope_rbac_role_binding
        (google_gke_hub_scope_rbac_role_binding ?group ?id ?labels
           ?project ?user ?timeouts ~scope_id
           ~scope_rbac_role_binding_id ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?group ?id ?labels ?project ?user ?timeouts
    ~scope_id ~scope_rbac_role_binding_id ~role __id =
  let (r : _ Tf_core.resource) =
    make ?group ?id ?labels ?project ?user ?timeouts ~scope_id
      ~scope_rbac_role_binding_id ~role __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
