(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_securityhub_configuration_policy_association = {
  id : string prop option; [@option]  (** id *)
  policy_id : string prop;
      (** The universally unique identifier (UUID) of the configuration policy. *)
  target_id : string prop;
      (** The identifier of the target account, organizational unit, or the root to associate with the specified configuration. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy_association *)

let timeouts ?create ?update () : timeouts = { create; update }

let aws_securityhub_configuration_policy_association ?id ?timeouts
    ~policy_id ~target_id () :
    aws_securityhub_configuration_policy_association =
  { id; policy_id; target_id; timeouts }

type t = {
  id : string prop;
  policy_id : string prop;
  target_id : string prop;
}

let make ?id ?timeouts ~policy_id ~target_id __id =
  let __type = "aws_securityhub_configuration_policy_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy_id = Prop.computed __type __id "policy_id";
       target_id = Prop.computed __type __id "target_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_configuration_policy_association
        (aws_securityhub_configuration_policy_association ?id
           ?timeouts ~policy_id ~target_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~policy_id ~target_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~policy_id ~target_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
