(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_acmpca_certificate_authority_certificate = {
  certificate : string;  (** certificate *)
  certificate_authority_arn : string;
      (** certificate_authority_arn *)
  certificate_chain : string option; [@option]
      (** certificate_chain *)
  id : string option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_acmpca_certificate_authority_certificate *)

let aws_acmpca_certificate_authority_certificate ?certificate_chain
    ?id ~certificate ~certificate_authority_arn __resource_id =
  let __resource_type =
    "aws_acmpca_certificate_authority_certificate"
  in
  let __resource =
    { certificate; certificate_authority_arn; certificate_chain; id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_acmpca_certificate_authority_certificate
       __resource);
  ()
