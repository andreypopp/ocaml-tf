(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_worklink_website_certificate_authority_association = {
  certificate : string;  (** certificate *)
  display_name : string option; [@option]  (** display_name *)
  fleet_arn : string;  (** fleet_arn *)
}
[@@deriving yojson_of]
(** aws_worklink_website_certificate_authority_association *)

let aws_worklink_website_certificate_authority_association
    ?display_name ~certificate ~fleet_arn __resource_id =
  let __resource_type =
    "aws_worklink_website_certificate_authority_association"
  in
  let __resource = { certificate; display_name; fleet_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_worklink_website_certificate_authority_association
       __resource);
  ()
