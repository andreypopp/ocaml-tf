(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~global_endpoint_token_version
    __resource_id =
  let __resource_type =
    "aws_iam_security_token_service_preferences"
  in
  let __resource =
    aws_iam_security_token_service_preferences ?id
      ~global_endpoint_token_version ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_security_token_service_preferences __resource);
  let __resource_attributes =
    ({
       global_endpoint_token_version =
         Prop.computed __resource_type __resource_id
           "global_endpoint_token_version";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
