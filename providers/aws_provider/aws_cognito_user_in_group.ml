(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_user_in_group = {
  group_name : string prop;  (** group_name *)
  id : string prop option; [@option]  (** id *)
  user_pool_id : string prop;  (** user_pool_id *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** aws_cognito_user_in_group *)

let aws_cognito_user_in_group ?id ~group_name ~user_pool_id ~username
    __resource_id =
  let __resource_type = "aws_cognito_user_in_group" in
  let __resource = { group_name; id; user_pool_id; username } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_user_in_group __resource);
  ()
