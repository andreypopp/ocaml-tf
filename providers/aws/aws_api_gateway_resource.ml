(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_resource = {
  id : string prop option; [@option]  (** id *)
  parent_id : string prop;  (** parent_id *)
  path_part : string prop;  (** path_part *)
  rest_api_id : string prop;  (** rest_api_id *)
}
[@@deriving yojson_of]
(** aws_api_gateway_resource *)

let aws_api_gateway_resource ?id ~parent_id ~path_part ~rest_api_id
    () : aws_api_gateway_resource =
  { id; parent_id; path_part; rest_api_id }

type t = {
  id : string prop;
  parent_id : string prop;
  path : string prop;
  path_part : string prop;
  rest_api_id : string prop;
}

let register ?tf_module ?id ~parent_id ~path_part ~rest_api_id
    __resource_id =
  let __resource_type = "aws_api_gateway_resource" in
  let __resource =
    aws_api_gateway_resource ?id ~parent_id ~path_part ~rest_api_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_resource __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       parent_id =
         Prop.computed __resource_type __resource_id "parent_id";
       path = Prop.computed __resource_type __resource_id "path";
       path_part =
         Prop.computed __resource_type __resource_id "path_part";
       rest_api_id =
         Prop.computed __resource_type __resource_id "rest_api_id";
     }
      : t)
  in
  __resource_attributes
