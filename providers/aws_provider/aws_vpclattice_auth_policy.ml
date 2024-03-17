(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_auth_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpclattice_auth_policy__timeouts *)

type aws_vpclattice_auth_policy = {
  policy : string;  (** policy *)
  resource_identifier : string;  (** resource_identifier *)
  state : string option; [@option]  (** state *)
  timeouts : aws_vpclattice_auth_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_auth_policy *)

let aws_vpclattice_auth_policy ?state ?timeouts ~policy
    ~resource_identifier __resource_id =
  let __resource_type = "aws_vpclattice_auth_policy" in
  let __resource =
    { policy; resource_identifier; state; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_auth_policy __resource);
  ()
