(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_rolesanywhere_profile = {
  duration_seconds : float prop option; [@option]
      (** duration_seconds *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  managed_policy_arns : string prop list option; [@option]
      (** managed_policy_arns *)
  name : string prop;  (** name *)
  require_instance_properties : bool prop option; [@option]
      (** require_instance_properties *)
  role_arns : string prop list;  (** role_arns *)
  session_policy : string prop option; [@option]
      (** session_policy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_rolesanywhere_profile *)

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
