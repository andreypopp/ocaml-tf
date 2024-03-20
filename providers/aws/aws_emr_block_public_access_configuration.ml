(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~block_public_security_group_rules
    ~permitted_public_security_group_rule_range __id =
  let __type = "aws_emr_block_public_access_configuration" in
  let __attrs =
    ({
       block_public_security_group_rules =
         Prop.computed __type __id
           "block_public_security_group_rules";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_block_public_access_configuration
        (aws_emr_block_public_access_configuration ?id
           ~block_public_security_group_rules
           ~permitted_public_security_group_rule_range ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~block_public_security_group_rules
    ~permitted_public_security_group_rule_range __id =
  let (r : _ Tf_core.resource) =
    make ?id ~block_public_security_group_rules
      ~permitted_public_security_group_rule_range __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
