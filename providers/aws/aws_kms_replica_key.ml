(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kms_replica_key = {
  bypass_policy_lockout_safety_check : bool prop option; [@option]
      (** bypass_policy_lockout_safety_check *)
  deletion_window_in_days : float prop option; [@option]
      (** deletion_window_in_days *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  policy : string prop option; [@option]  (** policy *)
  primary_key_arn : string prop;  (** primary_key_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_kms_replica_key *)

let aws_kms_replica_key ?bypass_policy_lockout_safety_check
    ?deletion_window_in_days ?description ?enabled ?id ?policy ?tags
    ?tags_all ~primary_key_arn () : aws_kms_replica_key =
  {
    bypass_policy_lockout_safety_check;
    deletion_window_in_days;
    description;
    enabled;
    id;
    policy;
    primary_key_arn;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  bypass_policy_lockout_safety_check : bool prop;
  deletion_window_in_days : float prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  key_id : string prop;
  key_rotation_enabled : bool prop;
  key_spec : string prop;
  key_usage : string prop;
  policy : string prop;
  primary_key_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?bypass_policy_lockout_safety_check ?deletion_window_in_days
    ?description ?enabled ?id ?policy ?tags ?tags_all
    ~primary_key_arn __id =
  let __type = "aws_kms_replica_key" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       bypass_policy_lockout_safety_check =
         Prop.computed __type __id
           "bypass_policy_lockout_safety_check";
       deletion_window_in_days =
         Prop.computed __type __id "deletion_window_in_days";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       key_rotation_enabled =
         Prop.computed __type __id "key_rotation_enabled";
       key_spec = Prop.computed __type __id "key_spec";
       key_usage = Prop.computed __type __id "key_usage";
       policy = Prop.computed __type __id "policy";
       primary_key_arn = Prop.computed __type __id "primary_key_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kms_replica_key
        (aws_kms_replica_key ?bypass_policy_lockout_safety_check
           ?deletion_window_in_days ?description ?enabled ?id ?policy
           ?tags ?tags_all ~primary_key_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?bypass_policy_lockout_safety_check
    ?deletion_window_in_days ?description ?enabled ?id ?policy ?tags
    ?tags_all ~primary_key_arn __id =
  let (r : _ Tf_core.resource) =
    make ?bypass_policy_lockout_safety_check ?deletion_window_in_days
      ?description ?enabled ?id ?policy ?tags ?tags_all
      ~primary_key_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
