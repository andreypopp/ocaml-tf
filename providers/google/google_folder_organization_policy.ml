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

type list_policy__allow = {
  all : bool prop option; [@option]
  values : string prop list option; [@option]
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
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : list_policy__allow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_list_policy__allow

[@@@deriving.end]

type list_policy__deny = {
  all : bool prop option; [@option]
  values : string prop list option; [@option]
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
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : list_policy__deny -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_list_policy__deny

[@@@deriving.end]

type list_policy = {
  inherit_from_parent : bool prop option; [@option]
  suggested_value : string prop option; [@option]
  allow : list_policy__allow list;
      [@default []] [@yojson_drop_default ( = )]
  deny : list_policy__deny list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : list_policy) -> ()

let yojson_of_list_policy =
  (function
   | {
       inherit_from_parent = v_inherit_from_parent;
       suggested_value = v_suggested_value;
       allow = v_allow;
       deny = v_deny;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         match v_suggested_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "suggested_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inherit_from_parent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "inherit_from_parent", arg in
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

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type google_folder_organization_policy = {
  constraint_ : string prop; [@key "constraint"]
  folder : string prop;
  id : string prop option; [@option]
  version : float prop option; [@option]
  boolean_policy : boolean_policy list;
      [@default []] [@yojson_drop_default ( = )]
  list_policy : list_policy list;
      [@default []] [@yojson_drop_default ( = )]
  restore_policy : restore_policy list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_folder_organization_policy) -> ()

let yojson_of_google_folder_organization_policy =
  (function
   | {
       constraint_ = v_constraint_;
       folder = v_folder;
       id = v_id;
       version = v_version;
       boolean_policy = v_boolean_policy;
       list_policy = v_list_policy;
       restore_policy = v_restore_policy;
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
         if [] = v_restore_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_restore_policy)
               v_restore_policy
           in
           let bnd = "restore_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_list_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_list_policy) v_list_policy
           in
           let bnd = "list_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_boolean_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_boolean_policy)
               v_boolean_policy
           in
           let bnd = "boolean_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "version", arg in
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
         let arg = yojson_of_prop yojson_of_string v_folder in
         ("folder", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_constraint_ in
         ("constraint", arg) :: bnds
       in
       `Assoc bnds
    : google_folder_organization_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_folder_organization_policy

[@@@deriving.end]

let boolean_policy ~enforced () : boolean_policy = { enforced }

let list_policy__allow ?all ?values () : list_policy__allow =
  { all; values }

let list_policy__deny ?all ?values () : list_policy__deny =
  { all; values }

let list_policy ?inherit_from_parent ?suggested_value ?(allow = [])
    ?(deny = []) () : list_policy =
  { inherit_from_parent; suggested_value; allow; deny }

let restore_policy ~default () : restore_policy = { default }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let google_folder_organization_policy ?id ?version
    ?(boolean_policy = []) ?(list_policy = []) ?(restore_policy = [])
    ?timeouts ~constraint_ ~folder () :
    google_folder_organization_policy =
  {
    constraint_;
    folder;
    id;
    version;
    boolean_policy;
    list_policy;
    restore_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  constraint_ : string prop;
  etag : string prop;
  folder : string prop;
  id : string prop;
  update_time : string prop;
  version : float prop;
}

let make ?id ?version ?(boolean_policy = []) ?(list_policy = [])
    ?(restore_policy = []) ?timeouts ~constraint_ ~folder __id =
  let __type = "google_folder_organization_policy" in
  let __attrs =
    ({
       tf_name = __id;
       constraint_ = Prop.computed __type __id "constraint";
       etag = Prop.computed __type __id "etag";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       update_time = Prop.computed __type __id "update_time";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_folder_organization_policy
        (google_folder_organization_policy ?id ?version
           ~boolean_policy ~list_policy ~restore_policy ?timeouts
           ~constraint_ ~folder ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?version ?(boolean_policy = [])
    ?(list_policy = []) ?(restore_policy = []) ?timeouts ~constraint_
    ~folder __id =
  let (r : _ Tf_core.resource) =
    make ?id ?version ~boolean_policy ~list_policy ~restore_policy
      ?timeouts ~constraint_ ~folder __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
