(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_source_configuration = {
  intended_use : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_source_configuration) -> ()

let yojson_of_data_source_configuration =
  (function
   | { intended_use = v_intended_use } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_intended_use with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "intended_use", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_source_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_source_configuration

[@@@deriving.end]

type aws_location_place_index = {
  data_source : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  index_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  data_source_configuration : data_source_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_location_place_index) -> ()

let yojson_of_aws_location_place_index =
  (function
   | {
       data_source = v_data_source;
       description = v_description;
       id = v_id;
       index_name = v_index_name;
       tags = v_tags;
       tags_all = v_tags_all;
       data_source_configuration = v_data_source_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data_source_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_source_configuration)
               v_data_source_configuration
           in
           let bnd = "data_source_configuration", arg in
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
         let arg = yojson_of_prop yojson_of_string v_index_name in
         ("index_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_data_source in
         ("data_source", arg) :: bnds
       in
       `Assoc bnds
    : aws_location_place_index -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_location_place_index

[@@@deriving.end]

let data_source_configuration ?intended_use () :
    data_source_configuration =
  { intended_use }

let aws_location_place_index ?description ?id ?tags ?tags_all
    ?(data_source_configuration = []) ~data_source ~index_name () :
    aws_location_place_index =
  {
    data_source;
    description;
    id;
    index_name;
    tags;
    tags_all;
    data_source_configuration;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  data_source : string prop;
  description : string prop;
  id : string prop;
  index_arn : string prop;
  index_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  update_time : string prop;
}

let make ?description ?id ?tags ?tags_all
    ?(data_source_configuration = []) ~data_source ~index_name __id =
  let __type = "aws_location_place_index" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       data_source = Prop.computed __type __id "data_source";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       index_arn = Prop.computed __type __id "index_arn";
       index_name = Prop.computed __type __id "index_name";
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
      yojson_of_aws_location_place_index
        (aws_location_place_index ?description ?id ?tags ?tags_all
           ~data_source_configuration ~data_source ~index_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ?(data_source_configuration = []) ~data_source ~index_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~data_source_configuration
      ~data_source ~index_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
