(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_user_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  precedence : float prop option; [@option]  (** precedence *)
  role_arn : string prop option; [@option]  (** role_arn *)
  user_pool_id : string prop;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** aws_cognito_user_group *)

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  precedence : float prop;
  role_arn : string prop;
  user_pool_id : string prop;
}

let aws_cognito_user_group ?description ?id ?precedence ?role_arn
    ~name ~user_pool_id __resource_id =
  let __resource_type = "aws_cognito_user_group" in
  let __resource =
    ({ description; id; name; precedence; role_arn; user_pool_id }
      : aws_cognito_user_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_user_group __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       precedence =
         Prop.computed __resource_type __resource_id "precedence";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       user_pool_id =
         Prop.computed __resource_type __resource_id "user_pool_id";
     }
      : t)
  in
  __resource_attributes
