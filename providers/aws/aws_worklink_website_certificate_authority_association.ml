(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_worklink_website_certificate_authority_association = {
  certificate : string prop;  (** certificate *)
  display_name : string prop option; [@option]  (** display_name *)
  fleet_arn : string prop;  (** fleet_arn *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_worklink_website_certificate_authority_association *)

type t = {
  certificate : string prop;
  display_name : string prop;
  fleet_arn : string prop;
  id : string prop;
  website_ca_id : string prop;
}

let aws_worklink_website_certificate_authority_association
    ?display_name ?id ~certificate ~fleet_arn __resource_id =
  let __resource_type =
    "aws_worklink_website_certificate_authority_association"
  in
  let __resource =
    ({ certificate; display_name; fleet_arn; id }
      : aws_worklink_website_certificate_authority_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_worklink_website_certificate_authority_association
       __resource);
  let __resource_attributes =
    ({
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       fleet_arn =
         Prop.computed __resource_type __resource_id "fleet_arn";
       id = Prop.computed __resource_type __resource_id "id";
       website_ca_id =
         Prop.computed __resource_type __resource_id "website_ca_id";
     }
      : t)
  in
  __resource_attributes
