(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_group_rule = {
  expression_type : string prop option; [@option]
  expression_value : string prop;
  group_assignments : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : string prop option; [@option]
  name : string prop;
  remove_assigned_users : bool prop option; [@option]
  status : string prop option; [@option]
  users_excluded : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_group_rule) -> ()

let yojson_of_okta_group_rule =
  (function
   | {
       expression_type = v_expression_type;
       expression_value = v_expression_value;
       group_assignments = v_group_assignments;
       id = v_id;
       name = v_name;
       remove_assigned_users = v_remove_assigned_users;
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
         match v_remove_assigned_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "remove_assigned_users", arg in
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
         if Stdlib.( = ) [] v_group_assignments then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_group_assignments
           in
           let bnd = "group_assignments", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_expression_value
         in
         ("expression_value", arg) :: bnds
       in
       let bnds =
         match v_expression_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_group_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_group_rule

[@@@deriving.end]

let okta_group_rule ?expression_type ?id ?remove_assigned_users
    ?status ?users_excluded ~expression_value ~group_assignments
    ~name () : okta_group_rule =
  {
    expression_type;
    expression_value;
    group_assignments;
    id;
    name;
    remove_assigned_users;
    status;
    users_excluded;
  }

type t = {
  tf_name : string;
  expression_type : string prop;
  expression_value : string prop;
  group_assignments : string list prop;
  id : string prop;
  name : string prop;
  remove_assigned_users : bool prop;
  status : string prop;
  users_excluded : string list prop;
}

let make ?expression_type ?id ?remove_assigned_users ?status
    ?users_excluded ~expression_value ~group_assignments ~name __id =
  let __type = "okta_group_rule" in
  let __attrs =
    ({
       tf_name = __id;
       expression_type = Prop.computed __type __id "expression_type";
       expression_value =
         Prop.computed __type __id "expression_value";
       group_assignments =
         Prop.computed __type __id "group_assignments";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       remove_assigned_users =
         Prop.computed __type __id "remove_assigned_users";
       status = Prop.computed __type __id "status";
       users_excluded = Prop.computed __type __id "users_excluded";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_group_rule
        (okta_group_rule ?expression_type ?id ?remove_assigned_users
           ?status ?users_excluded ~expression_value
           ~group_assignments ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?expression_type ?id ?remove_assigned_users
    ?status ?users_excluded ~expression_value ~group_assignments
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?expression_type ?id ?remove_assigned_users ?status
      ?users_excluded ~expression_value ~group_assignments ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
