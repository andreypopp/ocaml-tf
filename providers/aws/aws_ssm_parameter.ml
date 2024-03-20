(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_parameter = {
  allowed_pattern : string prop option; [@option]
  arn : string prop option; [@option]
  data_type : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  insecure_value : string prop option; [@option]
  key_id : string prop option; [@option]
  name : string prop;
  overwrite : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  tier : string prop option; [@option]
  type_ : string prop; [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_parameter) -> ()

let yojson_of_aws_ssm_parameter =
  (function
   | {
       allowed_pattern = v_allowed_pattern;
       arn = v_arn;
       data_type = v_data_type;
       description = v_description;
       id = v_id;
       insecure_value = v_insecure_value;
       key_id = v_key_id;
       name = v_name;
       overwrite = v_overwrite;
       tags = v_tags;
       tags_all = v_tags_all;
       tier = v_tier;
       type_ = v_type_;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
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
         match v_overwrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "overwrite", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_insecure_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "insecure_value", arg in
             bnd :: bnds
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
         match v_data_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allowed_pattern", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ssm_parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_parameter

[@@@deriving.end]

let aws_ssm_parameter ?allowed_pattern ?arn ?data_type ?description
    ?id ?insecure_value ?key_id ?overwrite ?tags ?tags_all ?tier
    ?value ~name ~type_ () : aws_ssm_parameter =
  {
    allowed_pattern;
    arn;
    data_type;
    description;
    id;
    insecure_value;
    key_id;
    name;
    overwrite;
    tags;
    tags_all;
    tier;
    type_;
    value;
  }

type t = {
  allowed_pattern : string prop;
  arn : string prop;
  data_type : string prop;
  description : string prop;
  id : string prop;
  insecure_value : string prop;
  key_id : string prop;
  name : string prop;
  overwrite : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tier : string prop;
  type_ : string prop;
  value : string prop;
  version : float prop;
}

let make ?allowed_pattern ?arn ?data_type ?description ?id
    ?insecure_value ?key_id ?overwrite ?tags ?tags_all ?tier ?value
    ~name ~type_ __id =
  let __type = "aws_ssm_parameter" in
  let __attrs =
    ({
       allowed_pattern = Prop.computed __type __id "allowed_pattern";
       arn = Prop.computed __type __id "arn";
       data_type = Prop.computed __type __id "data_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       insecure_value = Prop.computed __type __id "insecure_value";
       key_id = Prop.computed __type __id "key_id";
       name = Prop.computed __type __id "name";
       overwrite = Prop.computed __type __id "overwrite";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tier = Prop.computed __type __id "tier";
       type_ = Prop.computed __type __id "type";
       value = Prop.computed __type __id "value";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_parameter
        (aws_ssm_parameter ?allowed_pattern ?arn ?data_type
           ?description ?id ?insecure_value ?key_id ?overwrite ?tags
           ?tags_all ?tier ?value ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_pattern ?arn ?data_type ?description
    ?id ?insecure_value ?key_id ?overwrite ?tags ?tags_all ?tier
    ?value ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_pattern ?arn ?data_type ?description ?id
      ?insecure_value ?key_id ?overwrite ?tags ?tags_all ?tier ?value
      ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
