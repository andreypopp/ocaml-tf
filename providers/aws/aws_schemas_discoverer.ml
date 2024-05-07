(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_schemas_discoverer = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  source_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_schemas_discoverer) -> ()

let yojson_of_aws_schemas_discoverer =
  (function
   | {
       description = v_description;
       id = v_id;
       source_arn = v_source_arn;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_source_arn in
         ("source_arn", arg) :: bnds
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
    : aws_schemas_discoverer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_schemas_discoverer

[@@@deriving.end]

let aws_schemas_discoverer ?description ?id ?tags ?tags_all
    ~source_arn () : aws_schemas_discoverer =
  { description; id; source_arn; tags; tags_all }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  source_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~source_arn __id =
  let __type = "aws_schemas_discoverer" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       source_arn = Prop.computed __type __id "source_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_schemas_discoverer
        (aws_schemas_discoverer ?description ?id ?tags ?tags_all
           ~source_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~source_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~source_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
