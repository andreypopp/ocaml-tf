(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_firewall_config = {
  firewall_fail_open : string prop option; [@option]
      (** firewall_fail_open *)
  id : string prop option; [@option]  (** id *)
  resource_id : string prop;  (** resource_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_firewall_config *)

let aws_route53_resolver_firewall_config ?firewall_fail_open ?id
    ~resource_id () : aws_route53_resolver_firewall_config =
  { firewall_fail_open; id; resource_id }

type t = {
  firewall_fail_open : string prop;
  id : string prop;
  owner_id : string prop;
  resource_id : string prop;
}

let make ?firewall_fail_open ?id ~resource_id __id =
  let __type = "aws_route53_resolver_firewall_config" in
  let __attrs =
    ({
       firewall_fail_open =
         Prop.computed __type __id "firewall_fail_open";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       resource_id = Prop.computed __type __id "resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_firewall_config
        (aws_route53_resolver_firewall_config ?firewall_fail_open ?id
           ~resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?firewall_fail_open ?id ~resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?firewall_fail_open ?id ~resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
