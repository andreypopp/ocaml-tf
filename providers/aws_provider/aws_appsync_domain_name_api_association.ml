(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_domain_name_api_association = {
  api_id : string prop;  (** api_id *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_appsync_domain_name_api_association *)

type t = {
  api_id : string prop;
  domain_name : string prop;
  id : string prop;
}

let aws_appsync_domain_name_api_association ?id ~api_id ~domain_name
    __resource_id =
  let __resource_type = "aws_appsync_domain_name_api_association" in
  let __resource =
    ({ api_id; domain_name; id }
      : aws_appsync_domain_name_api_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_domain_name_api_association __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
