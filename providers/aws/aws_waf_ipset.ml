(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_set_descriptors = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** ip_set_descriptors *)

type aws_waf_ipset = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  ip_set_descriptors : ip_set_descriptors list;
}
[@@deriving yojson_of]
(** aws_waf_ipset *)

let ip_set_descriptors ~type_ ~value () : ip_set_descriptors =
  { type_; value }

let aws_waf_ipset ?id ~name ~ip_set_descriptors () : aws_waf_ipset =
  { id; name; ip_set_descriptors }

type t = { arn : string prop; id : string prop; name : string prop }

let make ?id ~name ~ip_set_descriptors __id =
  let __type = "aws_waf_ipset" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_waf_ipset
        (aws_waf_ipset ?id ~name ~ip_set_descriptors ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~ip_set_descriptors __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~ip_set_descriptors __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
