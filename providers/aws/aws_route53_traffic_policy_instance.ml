(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_traffic_policy_instance = {
  hosted_zone_id : string prop;  (** hosted_zone_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  traffic_policy_id : string prop;  (** traffic_policy_id *)
  traffic_policy_version : float prop;  (** traffic_policy_version *)
  ttl : float prop;  (** ttl *)
}
[@@deriving yojson_of]
(** aws_route53_traffic_policy_instance *)

let aws_route53_traffic_policy_instance ?id ~hosted_zone_id ~name
    ~traffic_policy_id ~traffic_policy_version ~ttl () :
    aws_route53_traffic_policy_instance =
  {
    hosted_zone_id;
    id;
    name;
    traffic_policy_id;
    traffic_policy_version;
    ttl;
  }

type t = {
  hosted_zone_id : string prop;
  id : string prop;
  name : string prop;
  traffic_policy_id : string prop;
  traffic_policy_version : float prop;
  ttl : float prop;
}

let make ?id ~hosted_zone_id ~name ~traffic_policy_id
    ~traffic_policy_version ~ttl __id =
  let __type = "aws_route53_traffic_policy_instance" in
  let __attrs =
    ({
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       traffic_policy_id =
         Prop.computed __type __id "traffic_policy_id";
       traffic_policy_version =
         Prop.computed __type __id "traffic_policy_version";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_traffic_policy_instance
        (aws_route53_traffic_policy_instance ?id ~hosted_zone_id
           ~name ~traffic_policy_id ~traffic_policy_version ~ttl ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~hosted_zone_id ~name ~traffic_policy_id
    ~traffic_policy_version ~ttl __id =
  let (r : _ Tf_core.resource) =
    make ?id ~hosted_zone_id ~name ~traffic_policy_id
      ~traffic_policy_version ~ttl __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
