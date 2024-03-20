(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_organizations_resource_policy = {
  content : string prop;  (** content *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_organizations_resource_policy *)

let aws_organizations_resource_policy ?id ?tags ?tags_all ~content ()
    : aws_organizations_resource_policy =
  { content; id; tags; tags_all }

type t = {
  arn : string prop;
  content : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~content __id =
  let __type = "aws_organizations_resource_policy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       content = Prop.computed __type __id "content";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_resource_policy
        (aws_organizations_resource_policy ?id ?tags ?tags_all
           ~content ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~content __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~content __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
