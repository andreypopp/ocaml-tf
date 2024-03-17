(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_base_path_mapping = {
  api_id : string;  (** api_id *)
  base_path : string option; [@option]  (** base_path *)
  domain_name : string;  (** domain_name *)
  id : string option; [@option]  (** id *)
  stage_name : string option; [@option]  (** stage_name *)
}
[@@deriving yojson_of]
(** aws_api_gateway_base_path_mapping *)

let aws_api_gateway_base_path_mapping ?base_path ?id ?stage_name
    ~api_id ~domain_name __resource_id =
  let __resource_type = "aws_api_gateway_base_path_mapping" in
  let __resource =
    { api_id; base_path; domain_name; id; stage_name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_base_path_mapping __resource);
  ()
