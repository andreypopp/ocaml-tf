(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_finspace_kx_database = {
  description : string prop option; [@option]  (** description *)
  environment_id : string prop;  (** environment_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_database *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_finspace_kx_database ?description ?id ?tags ?tags_all
    ?timeouts ~environment_id ~name () : aws_finspace_kx_database =
  { description; environment_id; id; name; tags; tags_all; timeouts }

type t = {
  arn : string prop;
  created_timestamp : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ?timeouts ~environment_id
    ~name __id =
  let __type = "aws_finspace_kx_database" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_timestamp =
         Prop.computed __type __id "created_timestamp";
       description = Prop.computed __type __id "description";
       environment_id = Prop.computed __type __id "environment_id";
       id = Prop.computed __type __id "id";
       last_modified_timestamp =
         Prop.computed __type __id "last_modified_timestamp";
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
      yojson_of_aws_finspace_kx_database
        (aws_finspace_kx_database ?description ?id ?tags ?tags_all
           ?timeouts ~environment_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~environment_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ?timeouts ~environment_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
