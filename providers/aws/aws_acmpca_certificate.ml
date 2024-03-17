(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_acmpca_certificate__validity = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_acmpca_certificate__validity *)

type aws_acmpca_certificate = {
  api_passthrough : string prop option; [@option]
      (** api_passthrough *)
  certificate_authority_arn : string prop;
      (** certificate_authority_arn *)
  certificate_signing_request : string prop;
      (** certificate_signing_request *)
  id : string prop option; [@option]  (** id *)
  signing_algorithm : string prop;  (** signing_algorithm *)
  template_arn : string prop option; [@option]  (** template_arn *)
  validity : aws_acmpca_certificate__validity list;
}
[@@deriving yojson_of]
(** aws_acmpca_certificate *)

type t = {
  api_passthrough : string prop;
  arn : string prop;
  certificate : string prop;
  certificate_authority_arn : string prop;
  certificate_chain : string prop;
  certificate_signing_request : string prop;
  id : string prop;
  signing_algorithm : string prop;
  template_arn : string prop;
}

let aws_acmpca_certificate ?api_passthrough ?id ?template_arn
    ~certificate_authority_arn ~certificate_signing_request
    ~signing_algorithm ~validity __resource_id =
  let __resource_type = "aws_acmpca_certificate" in
  let __resource =
    ({
       api_passthrough;
       certificate_authority_arn;
       certificate_signing_request;
       id;
       signing_algorithm;
       template_arn;
       validity;
     }
      : aws_acmpca_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_acmpca_certificate __resource);
  let __resource_attributes =
    ({
       api_passthrough =
         Prop.computed __resource_type __resource_id
           "api_passthrough";
       arn = Prop.computed __resource_type __resource_id "arn";
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       certificate_authority_arn =
         Prop.computed __resource_type __resource_id
           "certificate_authority_arn";
       certificate_chain =
         Prop.computed __resource_type __resource_id
           "certificate_chain";
       certificate_signing_request =
         Prop.computed __resource_type __resource_id
           "certificate_signing_request";
       id = Prop.computed __resource_type __resource_id "id";
       signing_algorithm =
         Prop.computed __resource_type __resource_id
           "signing_algorithm";
       template_arn =
         Prop.computed __resource_type __resource_id "template_arn";
     }
      : t)
  in
  __resource_attributes
