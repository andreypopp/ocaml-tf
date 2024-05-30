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

type platform_include = {
  os_expression : string prop option; [@option]
  os_type : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : platform_include) -> ()

let yojson_of_platform_include =
  (function
   | {
       os_expression = v_os_expression;
       os_type = v_os_type;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : platform_include -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_platform_include

[@@@deriving.end]

type user_identifier_patterns = {
  match_type : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_identifier_patterns) -> ()

let yojson_of_user_identifier_patterns =
  (function
   | { match_type = v_match_type; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "match_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : user_identifier_patterns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_identifier_patterns

[@@@deriving.end]

type okta_policy_rule_idp_discovery = {
  id : string prop option; [@option]
  idp_id : string prop option; [@option]
  idp_type : string prop option; [@option]
  name : string prop;
  network_connection : string prop option; [@option]
  network_excludes : string prop list option; [@option]
  network_includes : string prop list option; [@option]
  policy_id : string prop option; [@option]
  priority : float prop option; [@option]
  status : string prop option; [@option]
  user_identifier_attribute : string prop option; [@option]
  user_identifier_type : string prop option; [@option]
  app_exclude : app_exclude list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  app_include : app_include list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  platform_include : platform_include list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_identifier_patterns : user_identifier_patterns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_policy_rule_idp_discovery) -> ()

let yojson_of_okta_policy_rule_idp_discovery =
  (function
   | {
       id = v_id;
       idp_id = v_idp_id;
       idp_type = v_idp_type;
       name = v_name;
       network_connection = v_network_connection;
       network_excludes = v_network_excludes;
       network_includes = v_network_includes;
       policy_id = v_policy_id;
       priority = v_priority;
       status = v_status;
       user_identifier_attribute = v_user_identifier_attribute;
       user_identifier_type = v_user_identifier_type;
       app_exclude = v_app_exclude;
       app_include = v_app_include;
       platform_include = v_platform_include;
       user_identifier_patterns = v_user_identifier_patterns;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user_identifier_patterns then bnds
         else
           let arg =
             (yojson_of_list yojson_of_user_identifier_patterns)
               v_user_identifier_patterns
           in
           let bnd = "user_identifier_patterns", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_platform_include then bnds
         else
           let arg =
             (yojson_of_list yojson_of_platform_include)
               v_platform_include
           in
           let bnd = "platform_include", arg in
           bnd :: bnds
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
         match v_user_identifier_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_identifier_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_identifier_attribute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_identifier_attribute", arg in
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
         match v_idp_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idp_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idp_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idp_id", arg in
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
    : okta_policy_rule_idp_discovery ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_policy_rule_idp_discovery

[@@@deriving.end]

let app_exclude ?id ?name ~type_ () : app_exclude =
  { id; name; type_ }

let app_include ?id ?name ~type_ () : app_include =
  { id; name; type_ }

let platform_include ?os_expression ?os_type ?type_ () :
    platform_include =
  { os_expression; os_type; type_ }

let user_identifier_patterns ?match_type ?value () :
    user_identifier_patterns =
  { match_type; value }

let okta_policy_rule_idp_discovery ?id ?idp_id ?idp_type
    ?network_connection ?network_excludes ?network_includes
    ?policy_id ?priority ?status ?user_identifier_attribute
    ?user_identifier_type ~name ~app_exclude ~app_include
    ~platform_include ~user_identifier_patterns () :
    okta_policy_rule_idp_discovery =
  {
    id;
    idp_id;
    idp_type;
    name;
    network_connection;
    network_excludes;
    network_includes;
    policy_id;
    priority;
    status;
    user_identifier_attribute;
    user_identifier_type;
    app_exclude;
    app_include;
    platform_include;
    user_identifier_patterns;
  }

type t = {
  tf_name : string;
  id : string prop;
  idp_id : string prop;
  idp_type : string prop;
  name : string prop;
  network_connection : string prop;
  network_excludes : string list prop;
  network_includes : string list prop;
  policy_id : string prop;
  priority : float prop;
  status : string prop;
  user_identifier_attribute : string prop;
  user_identifier_type : string prop;
}

let make ?id ?idp_id ?idp_type ?network_connection ?network_excludes
    ?network_includes ?policy_id ?priority ?status
    ?user_identifier_attribute ?user_identifier_type ~name
    ~app_exclude ~app_include ~platform_include
    ~user_identifier_patterns __id =
  let __type = "okta_policy_rule_idp_discovery" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       idp_id = Prop.computed __type __id "idp_id";
       idp_type = Prop.computed __type __id "idp_type";
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
       user_identifier_attribute =
         Prop.computed __type __id "user_identifier_attribute";
       user_identifier_type =
         Prop.computed __type __id "user_identifier_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_policy_rule_idp_discovery
        (okta_policy_rule_idp_discovery ?id ?idp_id ?idp_type
           ?network_connection ?network_excludes ?network_includes
           ?policy_id ?priority ?status ?user_identifier_attribute
           ?user_identifier_type ~name ~app_exclude ~app_include
           ~platform_include ~user_identifier_patterns ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?idp_id ?idp_type ?network_connection
    ?network_excludes ?network_includes ?policy_id ?priority ?status
    ?user_identifier_attribute ?user_identifier_type ~name
    ~app_exclude ~app_include ~platform_include
    ~user_identifier_patterns __id =
  let (r : _ Tf_core.resource) =
    make ?id ?idp_id ?idp_type ?network_connection ?network_excludes
      ?network_includes ?policy_id ?priority ?status
      ?user_identifier_attribute ?user_identifier_type ~name
      ~app_exclude ~app_include ~platform_include
      ~user_identifier_patterns __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
