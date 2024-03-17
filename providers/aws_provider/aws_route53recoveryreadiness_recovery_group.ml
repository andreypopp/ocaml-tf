(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoveryreadiness_recovery_group__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_recovery_group__timeouts *)

type aws_route53recoveryreadiness_recovery_group = {
  cells : string list option; [@option]  (** cells *)
  recovery_group_name : string;  (** recovery_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts :
    aws_route53recoveryreadiness_recovery_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_recovery_group *)

let aws_route53recoveryreadiness_recovery_group ?cells ?tags
    ?timeouts ~recovery_group_name __resource_id =
  let __resource_type =
    "aws_route53recoveryreadiness_recovery_group"
  in
  let __resource = { cells; recovery_group_name; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoveryreadiness_recovery_group __resource);
  ()
