(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dkim_signing_attributes = {
  domain_signing_private_key : string prop option; [@option]
      (** domain_signing_private_key *)
  domain_signing_selector : string prop option; [@option]
      (** domain_signing_selector *)
  next_signing_key_length : string prop option; [@option]
      (** next_signing_key_length *)
}
[@@deriving yojson_of]
(** dkim_signing_attributes *)

type aws_sesv2_email_identity = {
  configuration_set_name : string prop option; [@option]
      (** configuration_set_name *)
  email_identity : string prop;  (** email_identity *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  dkim_signing_attributes : dkim_signing_attributes list;
}
[@@deriving yojson_of]
(** aws_sesv2_email_identity *)

let dkim_signing_attributes ?domain_signing_private_key
    ?domain_signing_selector ?next_signing_key_length () :
    dkim_signing_attributes =
  {
    domain_signing_private_key;
    domain_signing_selector;
    next_signing_key_length;
  }

let aws_sesv2_email_identity ?configuration_set_name ?id ?tags
    ?tags_all ~email_identity ~dkim_signing_attributes () :
    aws_sesv2_email_identity =
  {
    configuration_set_name;
    email_identity;
    id;
    tags;
    tags_all;
    dkim_signing_attributes;
  }

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

let make ?configuration_set_name ?id ?tags ?tags_all ~email_identity
    ~dkim_signing_attributes __id =
  let __type = "aws_sesv2_email_identity" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       configuration_set_name =
         Prop.computed __type __id "configuration_set_name";
       email_identity = Prop.computed __type __id "email_identity";
       id = Prop.computed __type __id "id";
       identity_type = Prop.computed __type __id "identity_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       verified_for_sending_status =
         Prop.computed __type __id "verified_for_sending_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_email_identity
        (aws_sesv2_email_identity ?configuration_set_name ?id ?tags
           ?tags_all ~email_identity ~dkim_signing_attributes ());
    attrs = __attrs;
  }

let register ?tf_module ?configuration_set_name ?id ?tags ?tags_all
    ~email_identity ~dkim_signing_attributes __id =
  let (r : _ Tf_core.resource) =
    make ?configuration_set_name ?id ?tags ?tags_all ~email_identity
      ~dkim_signing_attributes __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
