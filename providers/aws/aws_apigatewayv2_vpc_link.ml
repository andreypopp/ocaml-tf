(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apigatewayv2_vpc_link = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_vpc_link *)

let aws_apigatewayv2_vpc_link ?id ?tags ?tags_all ~name
    ~security_group_ids ~subnet_ids () : aws_apigatewayv2_vpc_link =
  { id; name; security_group_ids; subnet_ids; tags; tags_all }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~name ~security_group_ids ~subnet_ids
    __id =
  let __type = "aws_apigatewayv2_vpc_link" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_vpc_link
        (aws_apigatewayv2_vpc_link ?id ?tags ?tags_all ~name
           ~security_group_ids ~subnet_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name ~security_group_ids
    ~subnet_ids __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~security_group_ids ~subnet_ids
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
