(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_domain_name_api_association = {
  api_id : string;  (** api_id *)
  domain_name : string;  (** domain_name *)
}
[@@deriving yojson_of]
(** aws_appsync_domain_name_api_association *)

let aws_appsync_domain_name_api_association ~api_id ~domain_name
    __resource_id =
  let __resource_type = "aws_appsync_domain_name_api_association" in
  let __resource = { api_id; domain_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_domain_name_api_association __resource);
  ()
