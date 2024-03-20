(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_tag = {
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  resource_id : string prop;  (** resource_id *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_ec2_tag *)

let aws_ec2_tag ?id ~key ~resource_id ~value () : aws_ec2_tag =
  { id; key; resource_id; value }

type t = {
  id : string prop;
  key : string prop;
  resource_id : string prop;
  value : string prop;
}

let make ?id ~key ~resource_id ~value __id =
  let __type = "aws_ec2_tag" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       resource_id = Prop.computed __type __id "resource_id";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_tag
        (aws_ec2_tag ?id ~key ~resource_id ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~key ~resource_id ~value __id =
  let (r : _ Tf_core.resource) =
    make ?id ~key ~resource_id ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
