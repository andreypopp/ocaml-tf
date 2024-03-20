(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type partition_index = {
  index_name : string prop option; [@option]  (** index_name *)
  keys : string prop list option; [@option]  (** keys *)
}
[@@deriving yojson_of]
(** partition_index *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_glue_partition_index = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  table_name : string prop;  (** table_name *)
  partition_index : partition_index list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_glue_partition_index *)

let partition_index ?index_name ?keys () : partition_index =
  { index_name; keys }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_glue_partition_index ?catalog_id ?id ?timeouts ~database_name
    ~table_name ~partition_index () : aws_glue_partition_index =
  {
    catalog_id;
    database_name;
    id;
    table_name;
    partition_index;
    timeouts;
  }

type t = {
  catalog_id : string prop;
  database_name : string prop;
  id : string prop;
  table_name : string prop;
}

let make ?catalog_id ?id ?timeouts ~database_name ~table_name
    ~partition_index __id =
  let __type = "aws_glue_partition_index" in
  let __attrs =
    ({
       catalog_id = Prop.computed __type __id "catalog_id";
       database_name = Prop.computed __type __id "database_name";
       id = Prop.computed __type __id "id";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_partition_index
        (aws_glue_partition_index ?catalog_id ?id ?timeouts
           ~database_name ~table_name ~partition_index ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?id ?timeouts ~database_name
    ~table_name ~partition_index __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?id ?timeouts ~database_name ~table_name
      ~partition_index __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
