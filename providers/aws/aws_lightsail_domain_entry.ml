(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_domain_entry = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  is_alias : bool prop option; [@option]  (** is_alias *)
  name : string prop;  (** name *)
  target : string prop;  (** target *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lightsail_domain_entry *)

let aws_lightsail_domain_entry ?id ?is_alias ~domain_name ~name
    ~target ~type_ () : aws_lightsail_domain_entry =
  { domain_name; id; is_alias; name; target; type_ }

type t = {
  domain_name : string prop;
  id : string prop;
  is_alias : bool prop;
  name : string prop;
  target : string prop;
  type_ : string prop;
}

let make ?id ?is_alias ~domain_name ~name ~target ~type_ __id =
  let __type = "aws_lightsail_domain_entry" in
  let __attrs =
    ({
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       is_alias = Prop.computed __type __id "is_alias";
       name = Prop.computed __type __id "name";
       target = Prop.computed __type __id "target";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_domain_entry
        (aws_lightsail_domain_entry ?id ?is_alias ~domain_name ~name
           ~target ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_alias ~domain_name ~name ~target
    ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?is_alias ~domain_name ~name ~target ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
