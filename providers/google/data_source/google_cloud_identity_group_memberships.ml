(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type memberships__roles__expiry_detail = {
  expire_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : memberships__roles__expiry_detail) -> ()

let yojson_of_memberships__roles__expiry_detail =
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
    : memberships__roles__expiry_detail ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_memberships__roles__expiry_detail

[@@@deriving.end]

type memberships__roles = {
  expiry_detail : memberships__roles__expiry_detail list;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : memberships__roles) -> ()

let yojson_of_memberships__roles =
  (function
   | { expiry_detail = v_expiry_detail; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_memberships__roles__expiry_detail
             v_expiry_detail
         in
         ("expiry_detail", arg) :: bnds
       in
       `Assoc bnds
    : memberships__roles -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_memberships__roles

[@@@deriving.end]

type memberships__preferred_member_key = {
  id : string prop;
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : memberships__preferred_member_key) -> ()

let yojson_of_memberships__preferred_member_key =
  (function
   | { id = v_id; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : memberships__preferred_member_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_memberships__preferred_member_key

[@@@deriving.end]

type memberships = {
  create_time : string prop;
  group : string prop;
  name : string prop;
  preferred_member_key : memberships__preferred_member_key list;
  roles : memberships__roles list;
  type_ : string prop; [@key "type"]
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : memberships) -> ()

let yojson_of_memberships =
  (function
   | {
       create_time = v_create_time;
       group = v_group;
       name = v_name;
       preferred_member_key = v_preferred_member_key;
       roles = v_roles;
       type_ = v_type_;
       update_time = v_update_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_update_time in
         ("update_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_memberships__roles v_roles
         in
         ("roles", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_memberships__preferred_member_key
             v_preferred_member_key
         in
         ("preferred_member_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group in
         ("group", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       `Assoc bnds
    : memberships -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_memberships

[@@@deriving.end]

type google_cloud_identity_group_memberships = {
  group : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_identity_group_memberships) -> ()

let yojson_of_google_cloud_identity_group_memberships =
  (function
   | { group = v_group; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : google_cloud_identity_group_memberships ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_identity_group_memberships

[@@@deriving.end]

let google_cloud_identity_group_memberships ?id ~group () :
    google_cloud_identity_group_memberships =
  { group; id }

type t = {
  group : string prop;
  id : string prop;
  memberships : memberships list prop;
}

let make ?id ~group __id =
  let __type = "google_cloud_identity_group_memberships" in
  let __attrs =
    ({
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       memberships = Prop.computed __type __id "memberships";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_identity_group_memberships
        (google_cloud_identity_group_memberships ?id ~group ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group __id =
  let (r : _ Tf_core.resource) = make ?id ~group __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
