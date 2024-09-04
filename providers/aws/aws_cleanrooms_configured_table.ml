(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type table_reference = {
  database_name : string prop;
  table_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : table_reference) -> ()

let yojson_of_table_reference =
  (function
   | { database_name = v_database_name; table_name = v_table_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       `Assoc bnds
    : table_reference -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_table_reference

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type aws_cleanrooms_configured_table = {
  allowed_columns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  analysis_method : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  table_reference : table_reference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cleanrooms_configured_table) -> ()

let yojson_of_aws_cleanrooms_configured_table =
  (function
   | {
       allowed_columns = v_allowed_columns;
       analysis_method = v_analysis_method;
       description = v_description;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       table_reference = v_table_reference;
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
         if Stdlib.( = ) [] v_table_reference then bnds
         else
           let arg =
             (yojson_of_list yojson_of_table_reference)
               v_table_reference
           in
           let bnd = "table_reference", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_analysis_method
         in
         ("analysis_method", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_columns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_columns
           in
           let bnd = "allowed_columns", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_cleanrooms_configured_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cleanrooms_configured_table

[@@@deriving.end]

let table_reference ~database_name ~table_name () : table_reference =
  { database_name; table_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_cleanrooms_configured_table ?description ?id ?tags ?tags_all
    ?timeouts ~allowed_columns ~analysis_method ~name
    ~table_reference () : aws_cleanrooms_configured_table =
  {
    allowed_columns;
    analysis_method;
    description;
    id;
    name;
    tags;
    tags_all;
    table_reference;
    timeouts;
  }

type t = {
  tf_name : string;
  allowed_columns : string list prop;
  analysis_method : string prop;
  arn : string prop;
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  update_time : string prop;
}

let make ?description ?id ?tags ?tags_all ?timeouts ~allowed_columns
    ~analysis_method ~name ~table_reference __id =
  let __type = "aws_cleanrooms_configured_table" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_columns = Prop.computed __type __id "allowed_columns";
       analysis_method = Prop.computed __type __id "analysis_method";
       arn = Prop.computed __type __id "arn";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cleanrooms_configured_table
        (aws_cleanrooms_configured_table ?description ?id ?tags
           ?tags_all ?timeouts ~allowed_columns ~analysis_method
           ~name ~table_reference ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~allowed_columns ~analysis_method ~name ~table_reference __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ?timeouts ~allowed_columns
      ~analysis_method ~name ~table_reference __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
