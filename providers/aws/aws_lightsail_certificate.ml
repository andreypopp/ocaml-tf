(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type domain_validation_options = {
  domain_name : string prop;  (** domain_name *)
  resource_record_name : string prop;  (** resource_record_name *)
  resource_record_type : string prop;  (** resource_record_type *)
  resource_record_value : string prop;  (** resource_record_value *)
}
[@@deriving yojson_of]

type aws_lightsail_certificate = {
  domain_name : string prop option; [@option]  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subject_alternative_names : string prop list option; [@option]
      (** subject_alternative_names *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_lightsail_certificate *)

let aws_lightsail_certificate ?domain_name ?id
    ?subject_alternative_names ?tags ?tags_all ~name () :
    aws_lightsail_certificate =
  {
    domain_name;
    id;
    name;
    subject_alternative_names;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  created_at : string prop;
  domain_name : string prop;
  domain_validation_options : domain_validation_options list prop;
  id : string prop;
  name : string prop;
  subject_alternative_names : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?domain_name ?id ?subject_alternative_names ?tags ?tags_all
    ~name __id =
  let __type = "aws_lightsail_certificate" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       domain_name = Prop.computed __type __id "domain_name";
       domain_validation_options =
         Prop.computed __type __id "domain_validation_options";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       subject_alternative_names =
         Prop.computed __type __id "subject_alternative_names";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_certificate
        (aws_lightsail_certificate ?domain_name ?id
           ?subject_alternative_names ?tags ?tags_all ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?domain_name ?id ?subject_alternative_names
    ?tags ?tags_all ~name __id =
  let (r : _ Tf_core.resource) =
    make ?domain_name ?id ?subject_alternative_names ?tags ?tags_all
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
