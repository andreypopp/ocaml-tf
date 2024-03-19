(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?catalog_id ?id ?timeouts ~database_name
    ~table_name ~partition_index __resource_id =
  let __resource_type = "aws_glue_partition_index" in
  let __resource =
    aws_glue_partition_index ?catalog_id ?id ?timeouts ~database_name
      ~table_name ~partition_index ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_partition_index __resource);
  let __resource_attributes =
    ({
       catalog_id =
         Prop.computed __resource_type __resource_id "catalog_id";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       id = Prop.computed __resource_type __resource_id "id";
       table_name =
         Prop.computed __resource_type __resource_id "table_name";
     }
      : t)
  in
  __resource_attributes
