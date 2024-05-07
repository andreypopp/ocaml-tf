(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_workspaces_connection_alias = {
  connection_string : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_workspaces_connection_alias) -> ()

let yojson_of_aws_workspaces_connection_alias =
  (function
   | {
       connection_string = v_connection_string;
       tags = v_tags;
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
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       `Assoc bnds
    : aws_workspaces_connection_alias ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_workspaces_connection_alias

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_workspaces_connection_alias ?tags ?timeouts
    ~connection_string () : aws_workspaces_connection_alias =
  { connection_string; tags; timeouts }

type t = {
  tf_name : string;
  connection_string : string prop;
  id : string prop;
  owner_account_id : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?tags ?timeouts ~connection_string __id =
  let __type = "aws_workspaces_connection_alias" in
  let __attrs =
    ({
       tf_name = __id;
       connection_string =
         Prop.computed __type __id "connection_string";
       id = Prop.computed __type __id "id";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_workspaces_connection_alias
        (aws_workspaces_connection_alias ?tags ?timeouts
           ~connection_string ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?timeouts ~connection_string __id =
  let (r : _ Tf_core.resource) =
    make ?tags ?timeouts ~connection_string __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
