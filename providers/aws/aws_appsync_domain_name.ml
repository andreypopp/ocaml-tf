(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appsync_domain_name = {
  certificate_arn : string prop;  (** certificate_arn *)
  description : string prop option; [@option]  (** description *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_appsync_domain_name *)

let aws_appsync_domain_name ?description ?id ~certificate_arn
    ~domain_name () : aws_appsync_domain_name =
  { certificate_arn; description; domain_name; id }

type t = {
  appsync_domain_name : string prop;
  certificate_arn : string prop;
  description : string prop;
  domain_name : string prop;
  hosted_zone_id : string prop;
  id : string prop;
}

let make ?description ?id ~certificate_arn ~domain_name __id =
  let __type = "aws_appsync_domain_name" in
  let __attrs =
    ({
       appsync_domain_name =
         Prop.computed __type __id "appsync_domain_name";
       certificate_arn = Prop.computed __type __id "certificate_arn";
       description = Prop.computed __type __id "description";
       domain_name = Prop.computed __type __id "domain_name";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_domain_name
        (aws_appsync_domain_name ?description ?id ~certificate_arn
           ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~certificate_arn
    ~domain_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~certificate_arn ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
