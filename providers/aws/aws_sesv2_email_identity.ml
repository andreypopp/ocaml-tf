(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sesv2_email_identity__dkim_signing_attributes = {
  current_signing_key_length : string prop;
      (** current_signing_key_length *)
  domain_signing_private_key : string prop option; [@option]
      (** domain_signing_private_key *)
  domain_signing_selector : string prop option; [@option]
      (** domain_signing_selector *)
  last_key_generation_timestamp : string prop;
      (** last_key_generation_timestamp *)
  next_signing_key_length : string prop option; [@option]
      (** next_signing_key_length *)
  signing_attributes_origin : string prop;
      (** signing_attributes_origin *)
  status : string prop;  (** status *)
  tokens : string prop list;  (** tokens *)
}
[@@deriving yojson_of]
(** aws_sesv2_email_identity__dkim_signing_attributes *)

type aws_sesv2_email_identity = {
  configuration_set_name : string prop option; [@option]
      (** configuration_set_name *)
  email_identity : string prop;  (** email_identity *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  dkim_signing_attributes :
    aws_sesv2_email_identity__dkim_signing_attributes list;
}
[@@deriving yojson_of]
(** aws_sesv2_email_identity *)

type t = {
  arn : string prop;
  configuration_set_name : string prop;
  email_identity : string prop;
  id : string prop;
  identity_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  verified_for_sending_status : bool prop;
}

let aws_sesv2_email_identity ?configuration_set_name ?id ?tags
    ?tags_all ~email_identity ~dkim_signing_attributes __resource_id
    =
  let __resource_type = "aws_sesv2_email_identity" in
  let __resource =
    ({
       configuration_set_name;
       email_identity;
       id;
       tags;
       tags_all;
       dkim_signing_attributes;
     }
      : aws_sesv2_email_identity)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_email_identity __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       configuration_set_name =
         Prop.computed __resource_type __resource_id
           "configuration_set_name";
       email_identity =
         Prop.computed __resource_type __resource_id "email_identity";
       id = Prop.computed __resource_type __resource_id "id";
       identity_type =
         Prop.computed __resource_type __resource_id "identity_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       verified_for_sending_status =
         Prop.computed __resource_type __resource_id
           "verified_for_sending_status";
     }
      : t)
  in
  __resource_attributes
