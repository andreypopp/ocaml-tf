(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_configuration_policy_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy_association__timeouts *)

type aws_securityhub_configuration_policy_association = {
  id : string prop option; [@option]  (** id *)
  policy_id : string prop;
      (** The universally unique identifier (UUID) of the configuration policy. *)
  target_id : string prop;
      (** The identifier of the target account, organizational unit, or the root to associate with the specified configuration. *)
  timeouts :
    aws_securityhub_configuration_policy_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_securityhub_configuration_policy_association *)

let aws_securityhub_configuration_policy_association ?id ?timeouts
    ~policy_id ~target_id __resource_id =
  let __resource_type =
    "aws_securityhub_configuration_policy_association"
  in
  let __resource = { id; policy_id; target_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_configuration_policy_association
       __resource);
  ()
