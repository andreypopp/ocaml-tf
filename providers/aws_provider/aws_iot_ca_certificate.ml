(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_ca_certificate__registration_config = {
  role_arn : string prop option; [@option]  (** role_arn *)
  template_body : string prop option; [@option]  (** template_body *)
  template_name : string prop option; [@option]  (** template_name *)
}
[@@deriving yojson_of]
(** aws_iot_ca_certificate__registration_config *)

type aws_iot_ca_certificate__validity = {
  not_after : string prop;  (** not_after *)
  not_before : string prop;  (** not_before *)
}
[@@deriving yojson_of]

type aws_iot_ca_certificate = {
  active : bool prop;  (** active *)
  allow_auto_registration : bool prop;
      (** allow_auto_registration *)
  ca_certificate_pem : string prop;  (** ca_certificate_pem *)
  certificate_mode : string prop option; [@option]
      (** certificate_mode *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  verification_certificate_pem : string prop option; [@option]
      (** verification_certificate_pem *)
  registration_config :
    aws_iot_ca_certificate__registration_config list;
}
[@@deriving yojson_of]
(** aws_iot_ca_certificate *)

let aws_iot_ca_certificate ?certificate_mode ?id ?tags ?tags_all
    ?verification_certificate_pem ~active ~allow_auto_registration
    ~ca_certificate_pem ~registration_config __resource_id =
  let __resource_type = "aws_iot_ca_certificate" in
  let __resource =
    {
      active;
      allow_auto_registration;
      ca_certificate_pem;
      certificate_mode;
      id;
      tags;
      tags_all;
      verification_certificate_pem;
      registration_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_ca_certificate __resource);
  ()
