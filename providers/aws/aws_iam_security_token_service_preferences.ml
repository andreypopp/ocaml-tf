(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_security_token_service_preferences = {
  global_endpoint_token_version : string prop;
      (** global_endpoint_token_version *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_iam_security_token_service_preferences *)

let aws_iam_security_token_service_preferences ?id
    ~global_endpoint_token_version () :
    aws_iam_security_token_service_preferences =
  { global_endpoint_token_version; id }

type t = {
  global_endpoint_token_version : string prop;
  id : string prop;
}

let make ?id ~global_endpoint_token_version __id =
  let __type = "aws_iam_security_token_service_preferences" in
  let __attrs =
    ({
       global_endpoint_token_version =
         Prop.computed __type __id "global_endpoint_token_version";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_security_token_service_preferences
        (aws_iam_security_token_service_preferences ?id
           ~global_endpoint_token_version ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~global_endpoint_token_version __id =
  let (r : _ Tf_core.resource) =
    make ?id ~global_endpoint_token_version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
