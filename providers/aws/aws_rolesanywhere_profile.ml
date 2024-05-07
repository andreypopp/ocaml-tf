(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_rolesanywhere_profile = {
  duration_seconds : float prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  managed_policy_arns : string prop list option; [@option]
  name : string prop;
  require_instance_properties : bool prop option; [@option]
  role_arns : string prop list;
  session_policy : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rolesanywhere_profile) -> ()

let yojson_of_aws_rolesanywhere_profile =
  (function
   | {
       duration_seconds = v_duration_seconds;
       enabled = v_enabled;
       id = v_id;
       managed_policy_arns = v_managed_policy_arns;
       name = v_name;
       require_instance_properties = v_require_instance_properties;
       role_arns = v_role_arns;
       session_policy = v_session_policy;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
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
         match v_session_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_role_arns
         in
         ("role_arns", arg) :: bnds
       in
       let bnds =
         match v_require_instance_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_instance_properties", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_managed_policy_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "managed_policy_arns", arg in
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_duration_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "duration_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_rolesanywhere_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rolesanywhere_profile

[@@@deriving.end]

let aws_rolesanywhere_profile ?duration_seconds ?enabled ?id
    ?managed_policy_arns ?require_instance_properties ?session_policy
    ?tags ?tags_all ~name ~role_arns () : aws_rolesanywhere_profile =
  {
    duration_seconds;
    enabled;
    id;
    managed_policy_arns;
    name;
    require_instance_properties;
    role_arns;
    session_policy;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  duration_seconds : float prop;
  enabled : bool prop;
  id : string prop;
  managed_policy_arns : string list prop;
  name : string prop;
  require_instance_properties : bool prop;
  role_arns : string list prop;
  session_policy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?duration_seconds ?enabled ?id ?managed_policy_arns
    ?require_instance_properties ?session_policy ?tags ?tags_all
    ~name ~role_arns __id =
  let __type = "aws_rolesanywhere_profile" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       duration_seconds =
         Prop.computed __type __id "duration_seconds";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       managed_policy_arns =
         Prop.computed __type __id "managed_policy_arns";
       name = Prop.computed __type __id "name";
       require_instance_properties =
         Prop.computed __type __id "require_instance_properties";
       role_arns = Prop.computed __type __id "role_arns";
       session_policy = Prop.computed __type __id "session_policy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rolesanywhere_profile
        (aws_rolesanywhere_profile ?duration_seconds ?enabled ?id
           ?managed_policy_arns ?require_instance_properties
           ?session_policy ?tags ?tags_all ~name ~role_arns ());
    attrs = __attrs;
  }

let register ?tf_module ?duration_seconds ?enabled ?id
    ?managed_policy_arns ?require_instance_properties ?session_policy
    ?tags ?tags_all ~name ~role_arns __id =
  let (r : _ Tf_core.resource) =
    make ?duration_seconds ?enabled ?id ?managed_policy_arns
      ?require_instance_properties ?session_policy ?tags ?tags_all
      ~name ~role_arns __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
