(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_domain_name = {
  certificate_arn : string prop;  (** certificate_arn *)
  description : string prop option; [@option]  (** description *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_appsync_domain_name *)

type t = {
  appsync_domain_name : string prop;
  certificate_arn : string prop;
  description : string prop;
  domain_name : string prop;
  hosted_zone_id : string prop;
  id : string prop;
}

let aws_appsync_domain_name ?description ?id ~certificate_arn
    ~domain_name __resource_id =
  let __resource_type = "aws_appsync_domain_name" in
  let __resource =
    ({ certificate_arn; description; domain_name; id }
      : aws_appsync_domain_name)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_domain_name __resource);
  let __resource_attributes =
    ({
       appsync_domain_name =
         Prop.computed __resource_type __resource_id
           "appsync_domain_name";
       certificate_arn =
         Prop.computed __resource_type __resource_id
           "certificate_arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       hosted_zone_id =
         Prop.computed __resource_type __resource_id "hosted_zone_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
