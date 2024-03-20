(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_hosted_zone_dnssec = {
  hosted_zone_id : string prop;  (** hosted_zone_id *)
  id : string prop option; [@option]  (** id *)
  signing_status : string prop option; [@option]
      (** signing_status *)
}
[@@deriving yojson_of]
(** aws_route53_hosted_zone_dnssec *)

let aws_route53_hosted_zone_dnssec ?id ?signing_status
    ~hosted_zone_id () : aws_route53_hosted_zone_dnssec =
  { hosted_zone_id; id; signing_status }

type t = {
  hosted_zone_id : string prop;
  id : string prop;
  signing_status : string prop;
}

let make ?id ?signing_status ~hosted_zone_id __id =
  let __type = "aws_route53_hosted_zone_dnssec" in
  let __attrs =
    ({
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       signing_status = Prop.computed __type __id "signing_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_hosted_zone_dnssec
        (aws_route53_hosted_zone_dnssec ?id ?signing_status
           ~hosted_zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?signing_status ~hosted_zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?signing_status ~hosted_zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
