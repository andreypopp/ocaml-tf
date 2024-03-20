(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type partition_index = {
  index_name : string prop option; [@option]
  keys : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : partition_index) -> ()

let yojson_of_partition_index =
  (function
   | { index_name = v_index_name; keys = v_keys } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_index_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "index_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : partition_index -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_partition_index

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_glue_partition_index = {
  catalog_id : string prop option; [@option]
  database_name : string prop;
  id : string prop option; [@option]
  table_name : string prop;
  partition_index : partition_index list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_partition_index) -> ()

let yojson_of_aws_glue_partition_index =
  (function
   | {
       catalog_id = v_catalog_id;
       database_name = v_database_name;
       id = v_id;
       table_name = v_table_name;
       partition_index = v_partition_index;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_partition_index v_partition_index
         in
         ("partition_index", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_glue_partition_index -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_partition_index

[@@@deriving.end]

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
