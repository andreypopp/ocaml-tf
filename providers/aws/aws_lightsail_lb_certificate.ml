(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type domain_validation_records = {
  domain_name : string prop;  (** domain_name *)
  resource_record_name : string prop;  (** resource_record_name *)
  resource_record_type : string prop;  (** resource_record_type *)
  resource_record_value : string prop;  (** resource_record_value *)
}
[@@deriving yojson_of]

type aws_lightsail_lb_certificate = {
  domain_name : string prop option; [@option]  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  lb_name : string prop;  (** lb_name *)
  name : string prop;  (** name *)
  subject_alternative_names : string prop list option; [@option]
      (** subject_alternative_names *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb_certificate *)

let aws_lightsail_lb_certificate ?domain_name ?id
    ?subject_alternative_names ~lb_name ~name () :
    aws_lightsail_lb_certificate =
  { domain_name; id; lb_name; name; subject_alternative_names }

type t = {
  arn : string prop;
  created_at : string prop;
  domain_name : string prop;
  domain_validation_records : domain_validation_records list prop;
  id : string prop;
  lb_name : string prop;
  name : string prop;
  subject_alternative_names : string list prop;
  support_code : string prop;
}

let make ?domain_name ?id ?subject_alternative_names ~lb_name ~name
    __id =
  let __type = "aws_lightsail_lb_certificate" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       domain_name = Prop.computed __type __id "domain_name";
       domain_validation_records =
         Prop.computed __type __id "domain_validation_records";
       id = Prop.computed __type __id "id";
       lb_name = Prop.computed __type __id "lb_name";
       name = Prop.computed __type __id "name";
       subject_alternative_names =
         Prop.computed __type __id "subject_alternative_names";
       support_code = Prop.computed __type __id "support_code";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_lb_certificate
        (aws_lightsail_lb_certificate ?domain_name ?id
           ?subject_alternative_names ~lb_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?domain_name ?id ?subject_alternative_names
    ~lb_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?domain_name ?id ?subject_alternative_names ~lb_name ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
