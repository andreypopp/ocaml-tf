(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_vpc_link = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_arns : string prop list;  (** target_arns *)
}
[@@deriving yojson_of]
(** aws_api_gateway_vpc_link *)

let aws_api_gateway_vpc_link ?description ?id ?tags ?tags_all ~name
    ~target_arns () : aws_api_gateway_vpc_link =
  { description; id; name; tags; tags_all; target_arns }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arns : string list prop;
}

let make ?description ?id ?tags ?tags_all ~name ~target_arns __id =
  let __type = "aws_api_gateway_vpc_link" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_arns = Prop.computed __type __id "target_arns";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_vpc_link
        (aws_api_gateway_vpc_link ?description ?id ?tags ?tags_all
           ~name ~target_arns ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~target_arns __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name ~target_arns __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
