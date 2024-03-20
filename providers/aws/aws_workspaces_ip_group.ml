(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rules = {
  description : string prop option; [@option]  (** description *)
  source : string prop;  (** source *)
}
[@@deriving yojson_of]
(** rules *)

type aws_workspaces_ip_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  rules : rules list;
}
[@@deriving yojson_of]
(** aws_workspaces_ip_group *)

let rules ?description ~source () : rules = { description; source }

let aws_workspaces_ip_group ?description ?id ?tags ?tags_all ~name
    ~rules () : aws_workspaces_ip_group =
  { description; id; name; tags; tags_all; rules }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~name ~rules __id =
  let __type = "aws_workspaces_ip_group" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_workspaces_ip_group
        (aws_workspaces_ip_group ?description ?id ?tags ?tags_all
           ~name ~rules ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name ~rules
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name ~rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
