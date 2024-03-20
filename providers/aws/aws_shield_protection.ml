(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_shield_protection = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_arn : string prop;  (** resource_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_shield_protection *)

let aws_shield_protection ?id ?tags ?tags_all ~name ~resource_arn ()
    : aws_shield_protection =
  { id; name; resource_arn; tags; tags_all }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  resource_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~name ~resource_arn __id =
  let __type = "aws_shield_protection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_arn = Prop.computed __type __id "resource_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_shield_protection
        (aws_shield_protection ?id ?tags ?tags_all ~name
           ~resource_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name ~resource_arn __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~resource_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
