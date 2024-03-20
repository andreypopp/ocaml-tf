(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_internet_gateway = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_internet_gateway *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_internet_gateway ?id ?tags ?tags_all ?vpc_id ?timeouts () :
    aws_internet_gateway =
  { id; tags; tags_all; vpc_id; timeouts }

type t = {
  arn : string prop;
  id : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?tags ?tags_all ?vpc_id ?timeouts __id =
  let __type = "aws_internet_gateway" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_internet_gateway
        (aws_internet_gateway ?id ?tags ?tags_all ?vpc_id ?timeouts
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?vpc_id ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?vpc_id ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
