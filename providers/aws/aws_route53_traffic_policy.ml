(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_traffic_policy = {
  comment : string prop option; [@option]  (** comment *)
  document : string prop;  (** document *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53_traffic_policy *)

let aws_route53_traffic_policy ?comment ?id ~document ~name () :
    aws_route53_traffic_policy =
  { comment; document; id; name }

type t = {
  comment : string prop;
  document : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  version : float prop;
}

let make ?comment ?id ~document ~name __id =
  let __type = "aws_route53_traffic_policy" in
  let __attrs =
    ({
       comment = Prop.computed __type __id "comment";
       document = Prop.computed __type __id "document";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_traffic_policy
        (aws_route53_traffic_policy ?comment ?id ~document ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ~document ~name __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ~document ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
