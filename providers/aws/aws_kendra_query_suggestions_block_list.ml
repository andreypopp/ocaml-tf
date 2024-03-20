(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type source_s3_path = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
}
[@@deriving yojson_of]
(** source_s3_path *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_kendra_query_suggestions_block_list = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  index_id : string prop;  (** index_id *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  source_s3_path : source_s3_path list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_kendra_query_suggestions_block_list *)

let source_s3_path ~bucket ~key () : source_s3_path = { bucket; key }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kendra_query_suggestions_block_list ?description ?id ?tags
    ?tags_all ?timeouts ~index_id ~name ~role_arn ~source_s3_path ()
    : aws_kendra_query_suggestions_block_list =
  {
    description;
    id;
    index_id;
    name;
    role_arn;
    tags;
    tags_all;
    source_s3_path;
    timeouts;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  index_id : string prop;
  name : string prop;
  query_suggestions_block_list_id : string prop;
  role_arn : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ?timeouts ~index_id ~name
    ~role_arn ~source_s3_path __id =
  let __type = "aws_kendra_query_suggestions_block_list" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       index_id = Prop.computed __type __id "index_id";
       name = Prop.computed __type __id "name";
       query_suggestions_block_list_id =
         Prop.computed __type __id "query_suggestions_block_list_id";
       role_arn = Prop.computed __type __id "role_arn";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kendra_query_suggestions_block_list
        (aws_kendra_query_suggestions_block_list ?description ?id
           ?tags ?tags_all ?timeouts ~index_id ~name ~role_arn
           ~source_s3_path ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~index_id ~name ~role_arn ~source_s3_path __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ?timeouts ~index_id ~name
      ~role_arn ~source_s3_path __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
