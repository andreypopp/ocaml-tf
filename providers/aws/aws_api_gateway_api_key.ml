(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_api_key = {
  customer_id : string prop option; [@option]
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_api_key) -> ()

let yojson_of_aws_api_gateway_api_key =
  (function
   | {
       customer_id = v_customer_id;
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
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
         match v_customer_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_api_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_api_key

[@@@deriving.end]

let aws_api_gateway_api_key ?customer_id ?description ?enabled ?id
    ?tags ?tags_all ?value ~name () : aws_api_gateway_api_key =
  {
    customer_id;
    description;
    enabled;
    id;
    name;
    tags;
    tags_all;
    value;
  }

type t = {
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  customer_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  value : string prop;
}

let make ?customer_id ?description ?enabled ?id ?tags ?tags_all
    ?value ~name __id =
  let __type = "aws_api_gateway_api_key" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       customer_id = Prop.computed __type __id "customer_id";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_api_key
        (aws_api_gateway_api_key ?customer_id ?description ?enabled
           ?id ?tags ?tags_all ?value ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?customer_id ?description ?enabled ?id ?tags
    ?tags_all ?value ~name __id =
  let (r : _ Tf_core.resource) =
    make ?customer_id ?description ?enabled ?id ?tags ?tags_all
      ?value ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
