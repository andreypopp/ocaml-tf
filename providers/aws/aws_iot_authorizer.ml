(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_authorizer = {
  authorizer_function_arn : string prop;
      (** authorizer_function_arn *)
  enable_caching_for_http : bool prop option; [@option]
      (** enable_caching_for_http *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  signing_disabled : bool prop option; [@option]
      (** signing_disabled *)
  status : string prop option; [@option]  (** status *)
  token_key_name : string prop option; [@option]
      (** token_key_name *)
  token_signing_public_keys : (string * string prop) list option;
      [@option]
      (** token_signing_public_keys *)
}
[@@deriving yojson_of]
(** aws_iot_authorizer *)

let aws_iot_authorizer ?enable_caching_for_http ?id ?signing_disabled
    ?status ?token_key_name ?token_signing_public_keys
    ~authorizer_function_arn ~name () : aws_iot_authorizer =
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

type t = {
  arn : string prop;
  authorizer_function_arn : string prop;
  enable_caching_for_http : bool prop;
  id : string prop;
  name : string prop;
  signing_disabled : bool prop;
  status : string prop;
  token_key_name : string prop;
  token_signing_public_keys : (string * string) list prop;
}

let register ?tf_module ?enable_caching_for_http ?id
    ?signing_disabled ?status ?token_key_name
    ?token_signing_public_keys ~authorizer_function_arn ~name
    __resource_id =
  let __resource_type = "aws_iot_authorizer" in
  let __resource =
    aws_iot_authorizer ?enable_caching_for_http ?id ?signing_disabled
      ?status ?token_key_name ?token_signing_public_keys
      ~authorizer_function_arn ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_authorizer __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       authorizer_function_arn =
         Prop.computed __resource_type __resource_id
           "authorizer_function_arn";
       enable_caching_for_http =
         Prop.computed __resource_type __resource_id
           "enable_caching_for_http";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       signing_disabled =
         Prop.computed __resource_type __resource_id
           "signing_disabled";
       status = Prop.computed __resource_type __resource_id "status";
       token_key_name =
         Prop.computed __resource_type __resource_id "token_key_name";
       token_signing_public_keys =
         Prop.computed __resource_type __resource_id
           "token_signing_public_keys";
     }
      : t)
  in
  __resource_attributes
