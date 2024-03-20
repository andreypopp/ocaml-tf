(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type accounts = {
  arn : string prop;  (** arn *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type aws_organizations_organizational_unit = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parent_id : string prop;  (** parent_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_organizations_organizational_unit *)

let aws_organizations_organizational_unit ?id ?tags ?tags_all ~name
    ~parent_id () : aws_organizations_organizational_unit =
  { id; name; parent_id; tags; tags_all }

type t = {
  accounts : accounts list prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  parent_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~name ~parent_id __id =
  let __type = "aws_organizations_organizational_unit" in
  let __attrs =
    ({
       accounts = Prop.computed __type __id "accounts";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent_id = Prop.computed __type __id "parent_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_organizational_unit
        (aws_organizations_organizational_unit ?id ?tags ?tags_all
           ~name ~parent_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name ~parent_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~parent_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
