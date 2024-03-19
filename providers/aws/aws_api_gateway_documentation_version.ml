(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_documentation_version = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  rest_api_id : string prop;  (** rest_api_id *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** aws_api_gateway_documentation_version *)

let aws_api_gateway_documentation_version ?description ?id
    ~rest_api_id ~version () : aws_api_gateway_documentation_version
    =
  { description; id; rest_api_id; version }

type t = {
  description : string prop;
  id : string prop;
  rest_api_id : string prop;
  version : string prop;
}

let register ?tf_module ?description ?id ~rest_api_id ~version
    __resource_id =
  let __resource_type = "aws_api_gateway_documentation_version" in
  let __resource =
    aws_api_gateway_documentation_version ?description ?id
      ~rest_api_id ~version ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_documentation_version __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       rest_api_id =
         Prop.computed __resource_type __resource_id "rest_api_id";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
