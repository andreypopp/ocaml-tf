(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~policy_id ~target_id
    __resource_id =
  let __resource_type =
    "aws_securityhub_configuration_policy_association"
  in
  let __resource =
    aws_securityhub_configuration_policy_association ?id ?timeouts
      ~policy_id ~target_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_configuration_policy_association
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy_id =
         Prop.computed __resource_type __resource_id "policy_id";
       target_id =
         Prop.computed __resource_type __resource_id "target_id";
     }
      : t)
  in
  __resource_attributes
