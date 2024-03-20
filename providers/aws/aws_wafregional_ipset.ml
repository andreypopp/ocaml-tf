(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_set_descriptor = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** ip_set_descriptor *)

type aws_wafregional_ipset = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  ip_set_descriptor : ip_set_descriptor list;
}
[@@deriving yojson_of]
(** aws_wafregional_ipset *)

let ip_set_descriptor ~type_ ~value () : ip_set_descriptor =
  { type_; value }

let aws_wafregional_ipset ?id ~name ~ip_set_descriptor () :
    aws_wafregional_ipset =
  { id; name; ip_set_descriptor }

type t = { arn : string prop; id : string prop; name : string prop }

let make ?id ~name ~ip_set_descriptor __id =
  let __type = "aws_wafregional_ipset" in
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
      yojson_of_aws_wafregional_ipset
        (aws_wafregional_ipset ?id ~name ~ip_set_descriptor ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~ip_set_descriptor __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~ip_set_descriptor __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
