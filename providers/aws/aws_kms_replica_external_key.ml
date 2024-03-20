(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kms_replica_external_key = {
  bypass_policy_lockout_safety_check : bool prop option; [@option]
      (** bypass_policy_lockout_safety_check *)
  deletion_window_in_days : float prop option; [@option]
      (** deletion_window_in_days *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  key_material_base64 : string prop option; [@option]
      (** key_material_base64 *)
  policy : string prop option; [@option]  (** policy *)
  primary_key_arn : string prop;  (** primary_key_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  valid_to : string prop option; [@option]  (** valid_to *)
}
[@@deriving yojson_of]
(** aws_kms_replica_external_key *)

let aws_kms_replica_external_key ?bypass_policy_lockout_safety_check
    ?deletion_window_in_days ?description ?enabled ?id
    ?key_material_base64 ?policy ?tags ?tags_all ?valid_to
    ~primary_key_arn () : aws_kms_replica_external_key =
  {
    bypass_policy_lockout_safety_check;
    deletion_window_in_days;
    description;
    enabled;
    id;
    key_material_base64;
    policy;
    primary_key_arn;
    tags;
    tags_all;
    valid_to;
  }

type t = {
  arn : string prop;
  bypass_policy_lockout_safety_check : bool prop;
  deletion_window_in_days : float prop;
  description : string prop;
  enabled : bool prop;
  expiration_model : string prop;
  id : string prop;
  key_id : string prop;
  key_material_base64 : string prop;
  key_state : string prop;
  key_usage : string prop;
  policy : string prop;
  primary_key_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  valid_to : string prop;
}

let make ?bypass_policy_lockout_safety_check ?deletion_window_in_days
    ?description ?enabled ?id ?key_material_base64 ?policy ?tags
    ?tags_all ?valid_to ~primary_key_arn __id =
  let __type = "aws_kms_replica_external_key" in
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
       expiration_model =
         Prop.computed __type __id "expiration_model";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       key_material_base64 =
         Prop.computed __type __id "key_material_base64";
       key_state = Prop.computed __type __id "key_state";
       key_usage = Prop.computed __type __id "key_usage";
       policy = Prop.computed __type __id "policy";
       primary_key_arn = Prop.computed __type __id "primary_key_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       valid_to = Prop.computed __type __id "valid_to";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kms_replica_external_key
        (aws_kms_replica_external_key
           ?bypass_policy_lockout_safety_check
           ?deletion_window_in_days ?description ?enabled ?id
           ?key_material_base64 ?policy ?tags ?tags_all ?valid_to
           ~primary_key_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?bypass_policy_lockout_safety_check
    ?deletion_window_in_days ?description ?enabled ?id
    ?key_material_base64 ?policy ?tags ?tags_all ?valid_to
    ~primary_key_arn __id =
  let (r : _ Tf_core.resource) =
    make ?bypass_policy_lockout_safety_check ?deletion_window_in_days
      ?description ?enabled ?id ?key_material_base64 ?policy ?tags
      ?tags_all ?valid_to ~primary_key_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
