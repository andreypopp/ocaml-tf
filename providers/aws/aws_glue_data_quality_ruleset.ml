(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target_table = {
  catalog_id : string prop option; [@option]
  database_name : string prop;
  table_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_table) -> ()

let yojson_of_target_table =
  (function
   | {
       catalog_id = v_catalog_id;
       database_name = v_database_name;
       table_name = v_table_name;
     } ->
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
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_table

[@@@deriving.end]

type aws_glue_data_quality_ruleset = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  ruleset : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target_table : target_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_data_quality_ruleset) -> ()

let yojson_of_aws_glue_data_quality_ruleset =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       ruleset = v_ruleset;
       tags = v_tags;
       tags_all = v_tags_all;
       target_table = v_target_table;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target_table then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target_table) v_target_table
           in
           let bnd = "target_table", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ruleset in
         ("ruleset", arg) :: bnds
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
       `Assoc bnds
    : aws_glue_data_quality_ruleset ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_data_quality_ruleset

[@@@deriving.end]

let target_table ?catalog_id ~database_name ~table_name () :
    target_table =
  { catalog_id; database_name; table_name }

let aws_glue_data_quality_ruleset ?description ?id ?tags ?tags_all
    ?(target_table = []) ~name ~ruleset () :
    aws_glue_data_quality_ruleset =
  { description; id; name; ruleset; tags; tags_all; target_table }

type t = {
  tf_name : string;
  arn : string prop;
  created_on : string prop;
  description : string prop;
  id : string prop;
  last_modified_on : string prop;
  name : string prop;
  recommendation_run_id : string prop;
  ruleset : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ?(target_table = []) ~name
    ~ruleset __id =
  let __type = "aws_glue_data_quality_ruleset" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_on = Prop.computed __type __id "created_on";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_modified_on =
         Prop.computed __type __id "last_modified_on";
       name = Prop.computed __type __id "name";
       recommendation_run_id =
         Prop.computed __type __id "recommendation_run_id";
       ruleset = Prop.computed __type __id "ruleset";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_data_quality_ruleset
        (aws_glue_data_quality_ruleset ?description ?id ?tags
           ?tags_all ~target_table ~name ~ruleset ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ?(target_table = []) ~name ~ruleset __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~target_table ~name
      ~ruleset __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
