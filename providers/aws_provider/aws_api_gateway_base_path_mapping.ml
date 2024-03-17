(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_base_path_mapping = {
  api_id : string prop;  (** api_id *)
  base_path : string prop option; [@option]  (** base_path *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  stage_name : string prop option; [@option]  (** stage_name *)
}
[@@deriving yojson_of]
(** aws_api_gateway_base_path_mapping *)

type t = {
  api_id : string prop;
  base_path : string prop;
  domain_name : string prop;
  id : string prop;
  stage_name : string prop;
}

let aws_api_gateway_base_path_mapping ?base_path ?id ?stage_name
    ~api_id ~domain_name __resource_id =
  let __resource_type = "aws_api_gateway_base_path_mapping" in
  let __resource =
    ({ api_id; base_path; domain_name; id; stage_name }
      : aws_api_gateway_base_path_mapping)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_base_path_mapping __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       base_path =
         Prop.computed __resource_type __resource_id "base_path";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       stage_name =
         Prop.computed __resource_type __resource_id "stage_name";
     }
      : t)
  in
  __resource_attributes
