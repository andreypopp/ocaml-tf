(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_worklink_website_certificate_authority_association = {
  certificate : string prop;  (** certificate *)
  display_name : string prop option; [@option]  (** display_name *)
  fleet_arn : string prop;  (** fleet_arn *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_worklink_website_certificate_authority_association *)

let aws_worklink_website_certificate_authority_association
    ?display_name ?id ~certificate ~fleet_arn () :
    aws_worklink_website_certificate_authority_association =
  { certificate; display_name; fleet_arn; id }

type t = {
  certificate : string prop;
  display_name : string prop;
  fleet_arn : string prop;
  id : string prop;
  website_ca_id : string prop;
}

let make ?display_name ?id ~certificate ~fleet_arn __id =
  let __type =
    "aws_worklink_website_certificate_authority_association"
  in
  let __attrs =
    ({
       certificate = Prop.computed __type __id "certificate";
       display_name = Prop.computed __type __id "display_name";
       fleet_arn = Prop.computed __type __id "fleet_arn";
       id = Prop.computed __type __id "id";
       website_ca_id = Prop.computed __type __id "website_ca_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_worklink_website_certificate_authority_association
        (aws_worklink_website_certificate_authority_association
           ?display_name ?id ~certificate ~fleet_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ~certificate ~fleet_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ~certificate ~fleet_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
