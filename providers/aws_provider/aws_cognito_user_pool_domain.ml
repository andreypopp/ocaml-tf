(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_user_pool_domain = {
  certificate_arn : string option; [@option]  (** certificate_arn *)
  domain : string;  (** domain *)
  id : string option; [@option]  (** id *)
  user_pool_id : string;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool_domain *)

let aws_cognito_user_pool_domain ?certificate_arn ?id ~domain
    ~user_pool_id __resource_id =
  let __resource_type = "aws_cognito_user_pool_domain" in
  let __resource = { certificate_arn; domain; id; user_pool_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_user_pool_domain __resource);
  ()
