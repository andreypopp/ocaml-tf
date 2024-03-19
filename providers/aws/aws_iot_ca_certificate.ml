(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type registration_config = {
  role_arn : string prop option; [@option]  (** role_arn *)
  template_body : string prop option; [@option]  (** template_body *)
  template_name : string prop option; [@option]  (** template_name *)
}
[@@deriving yojson_of]
(** registration_config *)

type validity = {
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
  registration_config : registration_config list;
}
[@@deriving yojson_of]
(** aws_iot_ca_certificate *)

let registration_config ?role_arn ?template_body ?template_name () :
    registration_config =
  { role_arn; template_body; template_name }

let aws_iot_ca_certificate ?certificate_mode ?id ?tags ?tags_all
    ?verification_certificate_pem ~active ~allow_auto_registration
    ~ca_certificate_pem ~registration_config () :
    aws_iot_ca_certificate =
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

type t = {
  active : bool prop;
  allow_auto_registration : bool prop;
  arn : string prop;
  ca_certificate_pem : string prop;
  certificate_mode : string prop;
  customer_version : float prop;
  generation_id : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  validity : validity list prop;
  verification_certificate_pem : string prop;
}

let register ?tf_module ?certificate_mode ?id ?tags ?tags_all
    ?verification_certificate_pem ~active ~allow_auto_registration
    ~ca_certificate_pem ~registration_config __resource_id =
  let __resource_type = "aws_iot_ca_certificate" in
  let __resource =
    aws_iot_ca_certificate ?certificate_mode ?id ?tags ?tags_all
      ?verification_certificate_pem ~active ~allow_auto_registration
      ~ca_certificate_pem ~registration_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_ca_certificate __resource);
  let __resource_attributes =
    ({
       active = Prop.computed __resource_type __resource_id "active";
       allow_auto_registration =
         Prop.computed __resource_type __resource_id
           "allow_auto_registration";
       arn = Prop.computed __resource_type __resource_id "arn";
       ca_certificate_pem =
         Prop.computed __resource_type __resource_id
           "ca_certificate_pem";
       certificate_mode =
         Prop.computed __resource_type __resource_id
           "certificate_mode";
       customer_version =
         Prop.computed __resource_type __resource_id
           "customer_version";
       generation_id =
         Prop.computed __resource_type __resource_id "generation_id";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       validity =
         Prop.computed __resource_type __resource_id "validity";
       verification_certificate_pem =
         Prop.computed __resource_type __resource_id
           "verification_certificate_pem";
     }
      : t)
  in
  __resource_attributes
