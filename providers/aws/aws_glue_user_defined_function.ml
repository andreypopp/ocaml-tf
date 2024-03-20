(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type resource_uris = {
  resource_type : string prop;  (** resource_type *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** resource_uris *)

type aws_glue_user_defined_function = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  class_name : string prop;  (** class_name *)
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  owner_name : string prop;  (** owner_name *)
  owner_type : string prop;  (** owner_type *)
  resource_uris : resource_uris list;
}
[@@deriving yojson_of]
(** aws_glue_user_defined_function *)

let resource_uris ~resource_type ~uri () : resource_uris =
  { resource_type; uri }

let aws_glue_user_defined_function ?catalog_id ?id ~class_name
    ~database_name ~name ~owner_name ~owner_type ~resource_uris () :
    aws_glue_user_defined_function =
  {
    catalog_id;
    class_name;
    database_name;
    id;
    name;
    owner_name;
    owner_type;
    resource_uris;
  }

type t = {
  arn : string prop;
  catalog_id : string prop;
  class_name : string prop;
  create_time : string prop;
  database_name : string prop;
  id : string prop;
  name : string prop;
  owner_name : string prop;
  owner_type : string prop;
}

let make ?catalog_id ?id ~class_name ~database_name ~name ~owner_name
    ~owner_type ~resource_uris __id =
  let __type = "aws_glue_user_defined_function" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       catalog_id = Prop.computed __type __id "catalog_id";
       class_name = Prop.computed __type __id "class_name";
       create_time = Prop.computed __type __id "create_time";
       database_name = Prop.computed __type __id "database_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner_name = Prop.computed __type __id "owner_name";
       owner_type = Prop.computed __type __id "owner_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_user_defined_function
        (aws_glue_user_defined_function ?catalog_id ?id ~class_name
           ~database_name ~name ~owner_name ~owner_type
           ~resource_uris ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?id ~class_name ~database_name
    ~name ~owner_name ~owner_type ~resource_uris __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?id ~class_name ~database_name ~name ~owner_name
      ~owner_type ~resource_uris __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
