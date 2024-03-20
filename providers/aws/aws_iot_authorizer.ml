(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?enable_caching_for_http ?id ?signing_disabled ?status
    ?token_key_name ?token_signing_public_keys
    ~authorizer_function_arn ~name __id =
  let __type = "aws_iot_authorizer" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       authorizer_function_arn =
         Prop.computed __type __id "authorizer_function_arn";
       enable_caching_for_http =
         Prop.computed __type __id "enable_caching_for_http";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       signing_disabled =
         Prop.computed __type __id "signing_disabled";
       status = Prop.computed __type __id "status";
       token_key_name = Prop.computed __type __id "token_key_name";
       token_signing_public_keys =
         Prop.computed __type __id "token_signing_public_keys";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_authorizer
        (aws_iot_authorizer ?enable_caching_for_http ?id
           ?signing_disabled ?status ?token_key_name
           ?token_signing_public_keys ~authorizer_function_arn ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_caching_for_http ?id
    ?signing_disabled ?status ?token_key_name
    ?token_signing_public_keys ~authorizer_function_arn ~name __id =
  let (r : _ Tf_core.resource) =
    make ?enable_caching_for_http ?id ?signing_disabled ?status
      ?token_key_name ?token_signing_public_keys
      ~authorizer_function_arn ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
