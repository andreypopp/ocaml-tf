(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vpc_config = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** vpc_config *)

type aws_devicefarm_test_grid_project = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_config : vpc_config list;
}
[@@deriving yojson_of]
(** aws_devicefarm_test_grid_project *)

let vpc_config ~security_group_ids ~subnet_ids ~vpc_id () :
    vpc_config =
  { security_group_ids; subnet_ids; vpc_id }

let aws_devicefarm_test_grid_project ?description ?id ?tags ?tags_all
    ~name ~vpc_config () : aws_devicefarm_test_grid_project =
  { description; id; name; tags; tags_all; vpc_config }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~name ~vpc_config __id =
  let __type = "aws_devicefarm_test_grid_project" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
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
      yojson_of_aws_devicefarm_test_grid_project
        (aws_devicefarm_test_grid_project ?description ?id ?tags
           ?tags_all ~name ~vpc_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~vpc_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name ~vpc_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
