(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecs_tag = {
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  resource_arn : string prop;  (** resource_arn *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_ecs_tag *)

let aws_ecs_tag ?id ~key ~resource_arn ~value () : aws_ecs_tag =
  { id; key; resource_arn; value }

type t = {
  id : string prop;
  key : string prop;
  resource_arn : string prop;
  value : string prop;
}

let make ?id ~key ~resource_arn ~value __id =
  let __type = "aws_ecs_tag" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       resource_arn = Prop.computed __type __id "resource_arn";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_tag
        (aws_ecs_tag ?id ~key ~resource_arn ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~key ~resource_arn ~value __id =
  let (r : _ Tf_core.resource) =
    make ?id ~key ~resource_arn ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
