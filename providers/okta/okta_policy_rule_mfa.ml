(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type app_exclude = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : app_exclude) -> ()

let yojson_of_app_exclude =
  (function
   | { id = v_id; name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
       `Assoc bnds
    : app_exclude -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_app_exclude

[@@@deriving.end]

type app_include = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : app_include) -> ()

let yojson_of_app_include =
  (function
   | { id = v_id; name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
       `Assoc bnds
    : app_include -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_app_include

[@@@deriving.end]

type okta_policy_rule_mfa = {
  enroll : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  network_connection : string prop option; [@option]
  network_excludes : string prop list option; [@option]
  network_includes : string prop list option; [@option]
  policy_id : string prop option; [@option]
  priority : float prop option; [@option]
  status : string prop option; [@option]
  users_excluded : string prop list option; [@option]
  app_exclude : app_exclude list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  app_include : app_include list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_policy_rule_mfa) -> ()

let yojson_of_okta_policy_rule_mfa =
  (function
   | {
       enroll = v_enroll;
       id = v_id;
       name = v_name;
       network_connection = v_network_connection;
       network_excludes = v_network_excludes;
       network_includes = v_network_includes;
       policy_id = v_policy_id;
       priority = v_priority;
       status = v_status;
       users_excluded = v_users_excluded;
       app_exclude = v_app_exclude;
       app_include = v_app_include;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_app_include then bnds
         else
           let arg =
             (yojson_of_list yojson_of_app_include) v_app_include
           in
           let bnd = "app_include", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_app_exclude then bnds
         else
           let arg =
             (yojson_of_list yojson_of_app_exclude) v_app_exclude
           in
           let bnd = "app_exclude", arg in
           bnd :: bnds
       in
       let bnds =
         match v_users_excluded with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "users_excluded", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_includes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_includes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_excludes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_connection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_connection", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_enroll with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enroll", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_policy_rule_mfa -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_policy_rule_mfa

[@@@deriving.end]

let app_exclude ?id ?name ~type_ () : app_exclude =
  { id; name; type_ }

let app_include ?id ?name ~type_ () : app_include =
  { id; name; type_ }

let okta_policy_rule_mfa ?enroll ?id ?network_connection
    ?network_excludes ?network_includes ?policy_id ?priority ?status
    ?users_excluded ~name ~app_exclude ~app_include () :
    okta_policy_rule_mfa =
  {
    enroll;
    id;
    name;
    network_connection;
    network_excludes;
    network_includes;
    policy_id;
    priority;
    status;
    users_excluded;
    app_exclude;
    app_include;
  }

type t = {
  tf_name : string;
  enroll : string prop;
  id : string prop;
  name : string prop;
  network_connection : string prop;
  network_excludes : string list prop;
  network_includes : string list prop;
  policy_id : string prop;
  priority : float prop;
  status : string prop;
  users_excluded : string list prop;
}

let make ?enroll ?id ?network_connection ?network_excludes
    ?network_includes ?policy_id ?priority ?status ?users_excluded
    ~name ~app_exclude ~app_include __id =
  let __type = "okta_policy_rule_mfa" in
  let __attrs =
    ({
       tf_name = __id;
       enroll = Prop.computed __type __id "enroll";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_connection =
         Prop.computed __type __id "network_connection";
       network_excludes =
         Prop.computed __type __id "network_excludes";
       network_includes =
         Prop.computed __type __id "network_includes";
       policy_id = Prop.computed __type __id "policy_id";
       priority = Prop.computed __type __id "priority";
       status = Prop.computed __type __id "status";
       users_excluded = Prop.computed __type __id "users_excluded";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_policy_rule_mfa
        (okta_policy_rule_mfa ?enroll ?id ?network_connection
           ?network_excludes ?network_includes ?policy_id ?priority
           ?status ?users_excluded ~name ~app_exclude ~app_include ());
    attrs = __attrs;
  }

let register ?tf_module ?enroll ?id ?network_connection
    ?network_excludes ?network_includes ?policy_id ?priority ?status
    ?users_excluded ~name ~app_exclude ~app_include __id =
  let (r : _ Tf_core.resource) =
    make ?enroll ?id ?network_connection ?network_excludes
      ?network_includes ?policy_id ?priority ?status ?users_excluded
      ~name ~app_exclude ~app_include __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
