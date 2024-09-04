(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_athena_data_catalog = {
  description : string prop;
  id : string prop option; [@option]
  name : string prop;
  parameters : string prop Tf_core.assoc;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_athena_data_catalog) -> ()

let yojson_of_aws_athena_data_catalog =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       parameters = v_parameters;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_parameters
         in
         ("parameters", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : aws_athena_data_catalog -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_athena_data_catalog

[@@@deriving.end]

let aws_athena_data_catalog ?id ?tags ?tags_all ~description ~name
    ~parameters ~type_ () : aws_athena_data_catalog =
  { description; id; name; parameters; tags; tags_all; type_ }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

let make ?id ?tags ?tags_all ~description ~name ~parameters ~type_
    __id =
  let __type = "aws_athena_data_catalog" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_athena_data_catalog
        (aws_athena_data_catalog ?id ?tags ?tags_all ~description
           ~name ~parameters ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~description ~name
    ~parameters ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~description ~name ~parameters ~type_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
