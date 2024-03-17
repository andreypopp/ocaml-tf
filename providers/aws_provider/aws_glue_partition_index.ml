(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_partition_index__partition_index = {
  index_name : string prop option; [@option]  (** index_name *)
  index_status : string prop;  (** index_status *)
  keys : string prop list option; [@option]  (** keys *)
}
[@@deriving yojson_of]
(** aws_glue_partition_index__partition_index *)

type aws_glue_partition_index__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_glue_partition_index__timeouts *)

type aws_glue_partition_index = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  table_name : string prop;  (** table_name *)
  partition_index : aws_glue_partition_index__partition_index list;
  timeouts : aws_glue_partition_index__timeouts option;
}
[@@deriving yojson_of]
(** aws_glue_partition_index *)

let aws_glue_partition_index ?catalog_id ?id ?timeouts ~database_name
    ~table_name ~partition_index __resource_id =
  let __resource_type = "aws_glue_partition_index" in
  let __resource =
    {
      catalog_id;
      database_name;
      id;
      table_name;
      partition_index;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_partition_index __resource);
  ()
