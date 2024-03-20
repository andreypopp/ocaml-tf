(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type preferred_member_key = {
  id : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : preferred_member_key) -> ()

let yojson_of_preferred_member_key =
  (function
   | { id = v_id; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : preferred_member_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preferred_member_key

[@@@deriving.end]

type roles__expiry_detail = { expire_time : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : roles__expiry_detail) -> ()

let yojson_of_roles__expiry_detail =
  (function
   | { expire_time = v_expire_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expire_time in
         ("expire_time", arg) :: bnds
       in
       `Assoc bnds
    : roles__expiry_detail -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles__expiry_detail

[@@@deriving.end]

type roles = {
  name : string prop;
  expiry_detail : roles__expiry_detail list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roles) -> ()

let yojson_of_roles =
  (function
   | { name = v_name; expiry_detail = v_expiry_detail } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_roles__expiry_detail
             v_expiry_detail
         in
         ("expiry_detail", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : roles -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles

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

type google_cloud_identity_group_membership = {
  group : string prop;
  id : string prop option; [@option]
  preferred_member_key : preferred_member_key list;
  roles : roles list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_identity_group_membership) -> ()

let yojson_of_google_cloud_identity_group_membership =
  (function
   | {
       group = v_group;
       id = v_id;
       preferred_member_key = v_preferred_member_key;
       roles = v_roles;
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
         let arg = yojson_of_list yojson_of_roles v_roles in
         ("roles", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_preferred_member_key
             v_preferred_member_key
         in
         ("preferred_member_key", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_group in
         ("group", arg) :: bnds
       in
       `Assoc bnds
    : google_cloud_identity_group_membership ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_identity_group_membership

[@@@deriving.end]

let preferred_member_key ?namespace ~id () : preferred_member_key =
  { id; namespace }

let roles__expiry_detail ~expire_time () : roles__expiry_detail =
  { expire_time }

let roles ~name ~expiry_detail () : roles = { name; expiry_detail }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloud_identity_group_membership ?id ?timeouts ~group
    ~preferred_member_key ~roles () :
    google_cloud_identity_group_membership =
  { group; id; preferred_member_key; roles; timeouts }

type t = {
  create_time : string prop;
  group : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  update_time : string prop;
}

let make ?id ?timeouts ~group ~preferred_member_key ~roles __id =
  let __type = "google_cloud_identity_group_membership" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_identity_group_membership
        (google_cloud_identity_group_membership ?id ?timeouts ~group
           ~preferred_member_key ~roles ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~group ~preferred_member_key
    ~roles __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~group ~preferred_member_key ~roles __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
