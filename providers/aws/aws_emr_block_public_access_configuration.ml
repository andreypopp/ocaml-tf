(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type permitted_public_security_group_rule_range = {
  max_range : float prop;  (** max_range *)
  min_range : float prop;  (** min_range *)
}
[@@deriving yojson_of]
(** permitted_public_security_group_rule_range *)

type aws_emr_block_public_access_configuration = {
  block_public_security_group_rules : bool prop;
      (** block_public_security_group_rules *)
  id : string prop option; [@option]  (** id *)
  permitted_public_security_group_rule_range :
    permitted_public_security_group_rule_range list;
}
[@@deriving yojson_of]
(** aws_emr_block_public_access_configuration *)

let permitted_public_security_group_rule_range ~max_range ~min_range
    () : permitted_public_security_group_rule_range =
  { max_range; min_range }

let aws_emr_block_public_access_configuration ?id
    ~block_public_security_group_rules
    ~permitted_public_security_group_rule_range () :
    aws_emr_block_public_access_configuration =
  {
    block_public_security_group_rules;
    id;
    permitted_public_security_group_rule_range;
  }

type t = {
  block_public_security_group_rules : bool prop;
  id : string prop;
}

let register ?tf_module ?id ~block_public_security_group_rules
    ~permitted_public_security_group_rule_range __resource_id =
  let __resource_type =
    "aws_emr_block_public_access_configuration"
  in
  let __resource =
    aws_emr_block_public_access_configuration ?id
      ~block_public_security_group_rules
      ~permitted_public_security_group_rule_range ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_block_public_access_configuration __resource);
  let __resource_attributes =
    ({
       block_public_security_group_rules =
         Prop.computed __resource_type __resource_id
           "block_public_security_group_rules";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
