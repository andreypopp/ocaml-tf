(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_policy_rule_password = {
  id : string prop option; [@option]
  name : string prop;
  network_connection : string prop option; [@option]
  network_excludes : string prop list option; [@option]
  network_includes : string prop list option; [@option]
  password_change : string prop option; [@option]
  password_reset : string prop option; [@option]
  password_unlock : string prop option; [@option]
  policy_id : string prop option; [@option]
  priority : float prop option; [@option]
  status : string prop option; [@option]
  users_excluded : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_policy_rule_password) -> ()

let yojson_of_okta_policy_rule_password =
  (function
   | {
       id = v_id;
       name = v_name;
       network_connection = v_network_connection;
       network_excludes = v_network_excludes;
       network_includes = v_network_includes;
       password_change = v_password_change;
       password_reset = v_password_reset;
       password_unlock = v_password_unlock;
       policy_id = v_policy_id;
       priority = v_priority;
       status = v_status;
       users_excluded = v_users_excluded;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_password_unlock with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_unlock", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_reset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_reset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_change with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_change", arg in
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
       `Assoc bnds
    : okta_policy_rule_password -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_policy_rule_password

[@@@deriving.end]

let okta_policy_rule_password ?id ?network_connection
    ?network_excludes ?network_includes ?password_change
    ?password_reset ?password_unlock ?policy_id ?priority ?status
    ?users_excluded ~name () : okta_policy_rule_password =
  {
    id;
    name;
    network_connection;
    network_excludes;
    network_includes;
    password_change;
    password_reset;
    password_unlock;
    policy_id;
    priority;
    status;
    users_excluded;
  }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  network_connection : string prop;
  network_excludes : string list prop;
  network_includes : string list prop;
  password_change : string prop;
  password_reset : string prop;
  password_unlock : string prop;
  policy_id : string prop;
  priority : float prop;
  status : string prop;
  users_excluded : string list prop;
}

let make ?id ?network_connection ?network_excludes ?network_includes
    ?password_change ?password_reset ?password_unlock ?policy_id
    ?priority ?status ?users_excluded ~name __id =
  let __type = "okta_policy_rule_password" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_connection =
         Prop.computed __type __id "network_connection";
       network_excludes =
         Prop.computed __type __id "network_excludes";
       network_includes =
         Prop.computed __type __id "network_includes";
       password_change = Prop.computed __type __id "password_change";
       password_reset = Prop.computed __type __id "password_reset";
       password_unlock = Prop.computed __type __id "password_unlock";
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
      yojson_of_okta_policy_rule_password
        (okta_policy_rule_password ?id ?network_connection
           ?network_excludes ?network_includes ?password_change
           ?password_reset ?password_unlock ?policy_id ?priority
           ?status ?users_excluded ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?network_connection ?network_excludes
    ?network_includes ?password_change ?password_reset
    ?password_unlock ?policy_id ?priority ?status ?users_excluded
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?network_connection ?network_excludes ?network_includes
      ?password_change ?password_reset ?password_unlock ?policy_id
      ?priority ?status ?users_excluded ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
