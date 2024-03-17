(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_auth_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpclattice_auth_policy__timeouts *)

type aws_vpclattice_auth_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  resource_identifier : string prop;  (** resource_identifier *)
  state : string prop option; [@option]  (** state *)
  timeouts : aws_vpclattice_auth_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_auth_policy *)

type t = {
  id : string prop;
  policy : string prop;
  resource_identifier : string prop;
  state : string prop;
}

let aws_vpclattice_auth_policy ?id ?state ?timeouts ~policy
    ~resource_identifier __resource_id =
  let __resource_type = "aws_vpclattice_auth_policy" in
  let __resource =
    ({ id; policy; resource_identifier; state; timeouts }
      : aws_vpclattice_auth_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_auth_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       resource_identifier =
         Prop.computed __resource_type __resource_id
           "resource_identifier";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
