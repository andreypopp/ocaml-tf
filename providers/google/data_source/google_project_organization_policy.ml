(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type boolean_policy = { enforced : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : boolean_policy) -> ()

let yojson_of_boolean_policy =
  (function
   | { enforced = v_enforced } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enforced in
         ("enforced", arg) :: bnds
       in
       `Assoc bnds
    : boolean_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_boolean_policy

[@@@deriving.end]

type list_policy__deny = {
  all : bool prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : list_policy__deny) -> ()

let yojson_of_list_policy__deny =
  (function
   | { all = v_all; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_all in
         ("all", arg) :: bnds
       in
       `Assoc bnds
    : list_policy__deny -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_list_policy__deny

[@@@deriving.end]

type list_policy__allow = {
  all : bool prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : list_policy__allow) -> ()

let yojson_of_list_policy__allow =
  (function
   | { all = v_all; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_all in
         ("all", arg) :: bnds
       in
       `Assoc bnds
    : list_policy__allow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_list_policy__allow

[@@@deriving.end]

type list_policy = {
  allow : list_policy__allow list;
      [@default []] [@yojson_drop_default ( = )]
  deny : list_policy__deny list;
      [@default []] [@yojson_drop_default ( = )]
  inherit_from_parent : bool prop;
  suggested_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : list_policy) -> ()

let yojson_of_list_policy =
  (function
   | {
       allow = v_allow;
       deny = v_deny;
       inherit_from_parent = v_inherit_from_parent;
       suggested_value = v_suggested_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_suggested_value
         in
         ("suggested_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_inherit_from_parent
         in
         ("inherit_from_parent", arg) :: bnds
       in
       let bnds =
         if [] = v_deny then bnds
         else
           let arg =
             (yojson_of_list yojson_of_list_policy__deny) v_deny
           in
           let bnd = "deny", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_allow then bnds
         else
           let arg =
             (yojson_of_list yojson_of_list_policy__allow) v_allow
           in
           let bnd = "allow", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : list_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_list_policy

[@@@deriving.end]

type restore_policy = { default : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : restore_policy) -> ()

let yojson_of_restore_policy =
  (function
   | { default = v_default } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_default in
         ("default", arg) :: bnds
       in
       `Assoc bnds
    : restore_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_policy

[@@@deriving.end]

type google_project_organization_policy = {
  constraint_ : string prop; [@key "constraint"]
  id : string prop option; [@option]
  project : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_project_organization_policy) -> ()

let yojson_of_google_project_organization_policy =
  (function
   | { constraint_ = v_constraint_; id = v_id; project = v_project }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_constraint_ in
         ("constraint", arg) :: bnds
       in
       `Assoc bnds
    : google_project_organization_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_project_organization_policy

[@@@deriving.end]

let google_project_organization_policy ?id ~constraint_ ~project () :
    google_project_organization_policy =
  { constraint_; id; project }

type t = {
  tf_name : string;
  boolean_policy : boolean_policy list prop;
  constraint_ : string prop;
  etag : string prop;
  id : string prop;
  list_policy : list_policy list prop;
  project : string prop;
  restore_policy : restore_policy list prop;
  update_time : string prop;
  version : float prop;
}

let make ?id ~constraint_ ~project __id =
  let __type = "google_project_organization_policy" in
  let __attrs =
    ({
       tf_name = __id;
       boolean_policy = Prop.computed __type __id "boolean_policy";
       constraint_ = Prop.computed __type __id "constraint";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       list_policy = Prop.computed __type __id "list_policy";
       project = Prop.computed __type __id "project";
       restore_policy = Prop.computed __type __id "restore_policy";
       update_time = Prop.computed __type __id "update_time";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project_organization_policy
        (google_project_organization_policy ?id ~constraint_ ~project
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~constraint_ ~project __id =
  let (r : _ Tf_core.resource) =
    make ?id ~constraint_ ~project __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
