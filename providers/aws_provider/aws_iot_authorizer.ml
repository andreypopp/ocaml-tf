(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_authorizer = {
  authorizer_function_arn : string;  (** authorizer_function_arn *)
  enable_caching_for_http : bool option; [@option]
      (** enable_caching_for_http *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  signing_disabled : bool option; [@option]  (** signing_disabled *)
  status : string option; [@option]  (** status *)
  token_key_name : string option; [@option]  (** token_key_name *)
  token_signing_public_keys : (string * string) list option; [@option]
      (** token_signing_public_keys *)
}
[@@deriving yojson_of]
(** aws_iot_authorizer *)

let aws_iot_authorizer ?enable_caching_for_http ?id ?signing_disabled
    ?status ?token_key_name ?token_signing_public_keys
    ~authorizer_function_arn ~name __resource_id =
  let __resource_type = "aws_iot_authorizer" in
  let __resource =
    {
      authorizer_function_arn;
      enable_caching_for_http;
      id;
      name;
      signing_disabled;
      status;
      token_key_name;
      token_signing_public_keys;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_authorizer __resource);
  ()
