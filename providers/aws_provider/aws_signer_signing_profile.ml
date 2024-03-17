(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_signer_signing_profile__signature_validity_period = {
  type_ : string prop; [@key "type"]  (** type *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_signer_signing_profile__signature_validity_period *)

type aws_signer_signing_profile__signing_material = {
  certificate_arn : string prop;  (** certificate_arn *)
}
[@@deriving yojson_of]
(** aws_signer_signing_profile__signing_material *)

type aws_signer_signing_profile__revocation_record = {
  revocation_effective_from : string prop;
      (** revocation_effective_from *)
  revoked_at : string prop;  (** revoked_at *)
  revoked_by : string prop;  (** revoked_by *)
}
[@@deriving yojson_of]

type aws_signer_signing_profile = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  platform_id : string prop;  (** platform_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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
