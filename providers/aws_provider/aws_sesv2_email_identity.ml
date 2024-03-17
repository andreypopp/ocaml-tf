(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sesv2_email_identity__dkim_signing_attributes = {
  current_signing_key_length : string;
      (** current_signing_key_length *)
  domain_signing_private_key : string option; [@option]
      (** domain_signing_private_key *)
  domain_signing_selector : string option; [@option]
      (** domain_signing_selector *)
  last_key_generation_timestamp : string;
      (** last_key_generation_timestamp *)
  next_signing_key_length : string option; [@option]
      (** next_signing_key_length *)
  signing_attributes_origin : string;
      (** signing_attributes_origin *)
  status : string;  (** status *)
  tokens : string list;  (** tokens *)
}
[@@deriving yojson_of]
(** aws_sesv2_email_identity__dkim_signing_attributes *)

type aws_sesv2_email_identity = {
  configuration_set_name : string option; [@option]
      (** configuration_set_name *)
  email_identity : string;  (** email_identity *)
  tags : (string * string) list option; [@option]  (** tags *)
  dkim_signing_attributes :
    aws_sesv2_email_identity__dkim_signing_attributes list;
}
[@@deriving yojson_of]
(** aws_sesv2_email_identity *)

let aws_sesv2_email_identity ?configuration_set_name ?tags
    ~email_identity ~dkim_signing_attributes __resource_id =
  let __resource_type = "aws_sesv2_email_identity" in
  let __resource =
    {
      configuration_set_name;
      email_identity;
      tags;
      dkim_signing_attributes;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_email_identity __resource);
  ()
