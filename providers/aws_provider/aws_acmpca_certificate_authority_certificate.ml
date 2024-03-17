(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_acmpca_certificate_authority_certificate = {
  certificate : string prop;  (** certificate *)
  certificate_authority_arn : string prop;
      (** certificate_authority_arn *)
  certificate_chain : string prop option; [@option]
      (** certificate_chain *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority_certificate *)

type t = {
  certificate : string prop;
  certificate_authority_arn : string prop;
  certificate_chain : string prop;
  id : string prop;
}

let aws_acmpca_certificate_authority_certificate ?certificate_chain
    ?id ~certificate ~certificate_authority_arn __resource_id =
  let __resource_type =
    "aws_acmpca_certificate_authority_certificate"
  in
  let __resource =
    ({
       certificate;
       certificate_authority_arn;
       certificate_chain;
       id;
     }
      : aws_acmpca_certificate_authority_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_acmpca_certificate_authority_certificate
       __resource);
  let __resource_attributes =
    ({
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       certificate_authority_arn =
         Prop.computed __resource_type __resource_id
           "certificate_authority_arn";
       certificate_chain =
         Prop.computed __resource_type __resource_id
           "certificate_chain";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
