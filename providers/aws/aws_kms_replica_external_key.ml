(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?bypass_policy_lockout_safety_check
    ?deletion_window_in_days ?description ?enabled ?id
    ?key_material_base64 ?policy ?tags ?tags_all ?valid_to
    ~primary_key_arn __resource_id =
  let __resource_type = "aws_kms_replica_external_key" in
  let __resource =
    aws_kms_replica_external_key ?bypass_policy_lockout_safety_check
      ?deletion_window_in_days ?description ?enabled ?id
      ?key_material_base64 ?policy ?tags ?tags_all ?valid_to
      ~primary_key_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_replica_external_key __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       bypass_policy_lockout_safety_check =
         Prop.computed __resource_type __resource_id
           "bypass_policy_lockout_safety_check";
       deletion_window_in_days =
         Prop.computed __resource_type __resource_id
           "deletion_window_in_days";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       expiration_model =
         Prop.computed __resource_type __resource_id
           "expiration_model";
       id = Prop.computed __resource_type __resource_id "id";
       key_id = Prop.computed __resource_type __resource_id "key_id";
       key_material_base64 =
         Prop.computed __resource_type __resource_id
           "key_material_base64";
       key_state =
         Prop.computed __resource_type __resource_id "key_state";
       key_usage =
         Prop.computed __resource_type __resource_id "key_usage";
       policy = Prop.computed __resource_type __resource_id "policy";
       primary_key_arn =
         Prop.computed __resource_type __resource_id
           "primary_key_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       valid_to =
         Prop.computed __resource_type __resource_id "valid_to";
     }
      : t)
  in
  __resource_attributes
