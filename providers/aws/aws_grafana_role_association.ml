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

type aws_grafana_role_association = {
  group_ids : string prop list option; [@option]
  id : string prop option; [@option]
  role : string prop;
  user_ids : string prop list option; [@option]
  workspace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_grafana_role_association) -> ()

let yojson_of_aws_grafana_role_association =
  (function
   | {
       group_ids = v_group_ids;
       id = v_id;
       role = v_role;
       user_ids = v_user_ids;
       workspace_id = v_workspace_id;
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
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         match v_user_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "user_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
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
         match v_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "group_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_grafana_role_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_grafana_role_association

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_grafana_role_association ?group_ids ?id ?user_ids ?timeouts
    ~role ~workspace_id () : aws_grafana_role_association =
  { group_ids; id; role; user_ids; workspace_id; timeouts }

type t = {
  tf_name : string;
  group_ids : string list prop;
  id : string prop;
  role : string prop;
  user_ids : string list prop;
  workspace_id : string prop;
}

let make ?group_ids ?id ?user_ids ?timeouts ~role ~workspace_id __id
    =
  let __type = "aws_grafana_role_association" in
  let __attrs =
    ({
       tf_name = __id;
       group_ids = Prop.computed __type __id "group_ids";
       id = Prop.computed __type __id "id";
       role = Prop.computed __type __id "role";
       user_ids = Prop.computed __type __id "user_ids";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_grafana_role_association
        (aws_grafana_role_association ?group_ids ?id ?user_ids
           ?timeouts ~role ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?group_ids ?id ?user_ids ?timeouts ~role
    ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?group_ids ?id ?user_ids ?timeouts ~role ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
