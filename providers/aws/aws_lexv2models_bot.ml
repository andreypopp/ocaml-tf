(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_privacy = { child_directed : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : data_privacy) -> ()

let yojson_of_data_privacy =
  (function
   | { child_directed = v_child_directed } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_child_directed in
         ("child_directed", arg) :: bnds
       in
       `Assoc bnds
    : data_privacy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_privacy

[@@@deriving.end]

type members = {
  alias_id : string prop;
  alias_name : string prop;
  id : string prop;
  name : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : members) -> ()

let yojson_of_members =
  (function
   | {
       alias_id = v_alias_id;
       alias_name = v_alias_name;
       id = v_id;
       name = v_name;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alias_name in
         ("alias_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alias_id in
         ("alias_id", arg) :: bnds
       in
       `Assoc bnds
    : members -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_members

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

type aws_lexv2models_bot = {
  description : string prop option; [@option]
  idle_session_ttl_in_seconds : float prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  test_bot_alias_tags : (string * string prop) list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  data_privacy : data_privacy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  members : members list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lexv2models_bot) -> ()

let yojson_of_aws_lexv2models_bot =
  (function
   | {
       description = v_description;
       idle_session_ttl_in_seconds = v_idle_session_ttl_in_seconds;
       name = v_name;
       role_arn = v_role_arn;
       tags = v_tags;
       test_bot_alias_tags = v_test_bot_alias_tags;
       type_ = v_type_;
       data_privacy = v_data_privacy;
       members = v_members;
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
         if Stdlib.( = ) [] v_members then bnds
         else
           let arg = (yojson_of_list yojson_of_members) v_members in
           let bnd = "members", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_privacy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_privacy) v_data_privacy
           in
           let bnd = "data_privacy", arg in
           bnd :: bnds
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
         match v_test_bot_alias_tags with
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
             let bnd = "test_bot_alias_tags", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_idle_session_ttl_in_seconds
         in
         ("idle_session_ttl_in_seconds", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lexv2models_bot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lexv2models_bot

[@@@deriving.end]

let data_privacy ~child_directed () : data_privacy =
  { child_directed }

let members ~alias_id ~alias_name ~id ~name ~version () : members =
  { alias_id; alias_name; id; name; version }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_lexv2models_bot ?description ?tags ?test_bot_alias_tags
    ?type_ ?(data_privacy = []) ?(members = []) ?timeouts
    ~idle_session_ttl_in_seconds ~name ~role_arn () :
    aws_lexv2models_bot =
  {
    description;
    idle_session_ttl_in_seconds;
    name;
    role_arn;
    tags;
    test_bot_alias_tags;
    type_;
    data_privacy;
    members;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  idle_session_ttl_in_seconds : float prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  test_bot_alias_tags : (string * string) list prop;
  type_ : string prop;
}

let make ?description ?tags ?test_bot_alias_tags ?type_
    ?(data_privacy = []) ?(members = []) ?timeouts
    ~idle_session_ttl_in_seconds ~name ~role_arn __id =
  let __type = "aws_lexv2models_bot" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       idle_session_ttl_in_seconds =
         Prop.computed __type __id "idle_session_ttl_in_seconds";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       test_bot_alias_tags =
         Prop.computed __type __id "test_bot_alias_tags";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lexv2models_bot
        (aws_lexv2models_bot ?description ?tags ?test_bot_alias_tags
           ?type_ ~data_privacy ~members ?timeouts
           ~idle_session_ttl_in_seconds ~name ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?tags ?test_bot_alias_tags
    ?type_ ?(data_privacy = []) ?(members = []) ?timeouts
    ~idle_session_ttl_in_seconds ~name ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?description ?tags ?test_bot_alias_tags ?type_ ~data_privacy
      ~members ?timeouts ~idle_session_ttl_in_seconds ~name ~role_arn
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
