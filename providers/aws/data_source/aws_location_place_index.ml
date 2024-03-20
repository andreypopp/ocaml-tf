(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_source_configuration = { intended_use : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : data_source_configuration) -> ()

let yojson_of_data_source_configuration =
  (function
   | { intended_use = v_intended_use } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_intended_use in
         ("intended_use", arg) :: bnds
       in
       `Assoc bnds
    : data_source_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_source_configuration

[@@@deriving.end]

type aws_location_place_index = {
  id : string prop option; [@option]
  index_name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_location_place_index) -> ()

let yojson_of_aws_location_place_index =
  (function
   | { id = v_id; index_name = v_index_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : aws_location_place_index -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_location_place_index

[@@@deriving.end]

let aws_location_place_index ?id ?tags ~index_name () :
    aws_location_place_index =
  { id; index_name; tags }

type t = {
  create_time : string prop;
  data_source : string prop;
  data_source_configuration : data_source_configuration list prop;
  description : string prop;
  id : string prop;
  index_arn : string prop;
  index_name : string prop;
  tags : (string * string) list prop;
  update_time : string prop;
}

let make ?id ?tags ~index_name __id =
  let __type = "aws_location_place_index" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       data_source = Prop.computed __type __id "data_source";
       data_source_configuration =
         Prop.computed __type __id "data_source_configuration";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       index_arn = Prop.computed __type __id "index_arn";
       index_name = Prop.computed __type __id "index_name";
       tags = Prop.computed __type __id "tags";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_location_place_index
        (aws_location_place_index ?id ?tags ~index_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~index_name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~index_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
