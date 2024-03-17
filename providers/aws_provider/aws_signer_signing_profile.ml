(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_signer_signing_profile__signature_validity_period = {
  type_ : string; [@key "type"]  (** type *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_signer_signing_profile__signature_validity_period *)

type aws_signer_signing_profile__signing_material = {
  certificate_arn : string;  (** certificate_arn *)
}
[@@deriving yojson_of]
(** aws_signer_signing_profile__signing_material *)

type aws_signer_signing_profile__revocation_record = {
  revocation_effective_from : string;
      (** revocation_effective_from *)
  revoked_at : string;  (** revoked_at *)
  revoked_by : string;  (** revoked_by *)
}
[@@deriving yojson_of]

type aws_signer_signing_profile = {
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  platform_id : string;  (** platform_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  signature_validity_period :
    aws_signer_signing_profile__signature_validity_period list;
  signing_material :
    aws_signer_signing_profile__signing_material list;
}
[@@deriving yojson_of]
(** aws_signer_signing_profile *)

let aws_signer_signing_profile ?id ?name ?name_prefix ?tags ?tags_all
    ~platform_id ~signature_validity_period ~signing_material
    __resource_id =
  let __resource_type = "aws_signer_signing_profile" in
  let __resource =
    {
      id;
      name;
      name_prefix;
      platform_id;
      tags;
      tags_all;
      signature_validity_period;
      signing_material;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_signer_signing_profile __resource);
  ()
