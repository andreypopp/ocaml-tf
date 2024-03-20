(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_zone_association = {
  id : string prop option; [@option]  (** id *)
  vpc_id : string prop;  (** vpc_id *)
  vpc_region : string prop option; [@option]  (** vpc_region *)
  zone_id : string prop;  (** zone_id *)
}
[@@deriving yojson_of]
(** aws_route53_zone_association *)

let aws_route53_zone_association ?id ?vpc_region ~vpc_id ~zone_id ()
    : aws_route53_zone_association =
  { id; vpc_id; vpc_region; zone_id }

type t = {
  id : string prop;
  owning_account : string prop;
  vpc_id : string prop;
  vpc_region : string prop;
  zone_id : string prop;
}

let make ?id ?vpc_region ~vpc_id ~zone_id __id =
  let __type = "aws_route53_zone_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       owning_account = Prop.computed __type __id "owning_account";
       vpc_id = Prop.computed __type __id "vpc_id";
       vpc_region = Prop.computed __type __id "vpc_region";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_zone_association
        (aws_route53_zone_association ?id ?vpc_region ~vpc_id
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?vpc_region ~vpc_id ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?vpc_region ~vpc_id ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
