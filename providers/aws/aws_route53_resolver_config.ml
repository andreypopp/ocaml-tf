(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_config = {
  autodefined_reverse_flag : string prop;
      (** autodefined_reverse_flag *)
  id : string prop option; [@option]  (** id *)
  resource_id : string prop;  (** resource_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_config *)

let aws_route53_resolver_config ?id ~autodefined_reverse_flag
    ~resource_id () : aws_route53_resolver_config =
  { autodefined_reverse_flag; id; resource_id }

type t = {
  autodefined_reverse_flag : string prop;
  id : string prop;
  owner_id : string prop;
  resource_id : string prop;
}

let make ?id ~autodefined_reverse_flag ~resource_id __id =
  let __type = "aws_route53_resolver_config" in
  let __attrs =
    ({
       autodefined_reverse_flag =
         Prop.computed __type __id "autodefined_reverse_flag";
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
      yojson_of_aws_route53_resolver_config
        (aws_route53_resolver_config ?id ~autodefined_reverse_flag
           ~resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~autodefined_reverse_flag ~resource_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~autodefined_reverse_flag ~resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
