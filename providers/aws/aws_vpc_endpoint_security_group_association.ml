(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_endpoint_security_group_association = {
  id : string prop option; [@option]  (** id *)
  replace_default_association : bool prop option; [@option]
      (** replace_default_association *)
  security_group_id : string prop;  (** security_group_id *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_security_group_association *)

let aws_vpc_endpoint_security_group_association ?id
    ?replace_default_association ~security_group_id ~vpc_endpoint_id
    () : aws_vpc_endpoint_security_group_association =
  {
    id;
    replace_default_association;
    security_group_id;
    vpc_endpoint_id;
  }

type t = {
  id : string prop;
  replace_default_association : bool prop;
  security_group_id : string prop;
  vpc_endpoint_id : string prop;
}

let make ?id ?replace_default_association ~security_group_id
    ~vpc_endpoint_id __id =
  let __type = "aws_vpc_endpoint_security_group_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       replace_default_association =
         Prop.computed __type __id "replace_default_association";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_security_group_association
        (aws_vpc_endpoint_security_group_association ?id
           ?replace_default_association ~security_group_id
           ~vpc_endpoint_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?replace_default_association
    ~security_group_id ~vpc_endpoint_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?replace_default_association ~security_group_id
      ~vpc_endpoint_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
