(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?certificate_mode ?id ?tags ?tags_all
    ?verification_certificate_pem ~active ~allow_auto_registration
    ~ca_certificate_pem ~registration_config __id =
  let __type = "aws_iot_ca_certificate" in
  let __attrs =
    ({
       active = Prop.computed __type __id "active";
       allow_auto_registration =
         Prop.computed __type __id "allow_auto_registration";
       arn = Prop.computed __type __id "arn";
       ca_certificate_pem =
         Prop.computed __type __id "ca_certificate_pem";
       certificate_mode =
         Prop.computed __type __id "certificate_mode";
       customer_version =
         Prop.computed __type __id "customer_version";
       generation_id = Prop.computed __type __id "generation_id";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       validity = Prop.computed __type __id "validity";
       verification_certificate_pem =
         Prop.computed __type __id "verification_certificate_pem";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_ca_certificate
        (aws_iot_ca_certificate ?certificate_mode ?id ?tags ?tags_all
           ?verification_certificate_pem ~active
           ~allow_auto_registration ~ca_certificate_pem
           ~registration_config ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_mode ?id ?tags ?tags_all
    ?verification_certificate_pem ~active ~allow_auto_registration
    ~ca_certificate_pem ~registration_config __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_mode ?id ?tags ?tags_all
      ?verification_certificate_pem ~active ~allow_auto_registration
      ~ca_certificate_pem ~registration_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
