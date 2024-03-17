(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_acmpca_certificate__validity = {
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_acmpca_certificate__validity *)

type aws_acmpca_certificate = {
  api_passthrough : string option; [@option]  (** api_passthrough *)
  certificate_authority_arn : string;
      (** certificate_authority_arn *)
  certificate_signing_request : string;
      (** certificate_signing_request *)
  signing_algorithm : string;  (** signing_algorithm *)
  template_arn : string option; [@option]  (** template_arn *)
  validity : aws_acmpca_certificate__validity list;
}
[@@deriving yojson_of]
(** aws_acmpca_certificate *)

let aws_acmpca_certificate ?api_passthrough ?template_arn
    ~certificate_authority_arn ~certificate_signing_request
    ~signing_algorithm ~validity __resource_id =
  let __resource_type = "aws_acmpca_certificate" in
  let __resource =
    {
      api_passthrough;
      certificate_authority_arn;
      certificate_signing_request;
      signing_algorithm;
      template_arn;
      validity;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_acmpca_certificate __resource);
  ()
