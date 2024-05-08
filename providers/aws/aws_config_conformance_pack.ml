(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type input_parameter = {
  parameter_name : string prop;
  parameter_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_parameter) -> ()

let yojson_of_input_parameter =
  (function
   | {
       parameter_name = v_parameter_name;
       parameter_value = v_parameter_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_value
         in
         ("parameter_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parameter_name
         in
         ("parameter_name", arg) :: bnds
       in
       `Assoc bnds
    : input_parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_parameter

[@@@deriving.end]

type aws_config_conformance_pack = {
  delivery_s3_bucket : string prop option; [@option]
  delivery_s3_key_prefix : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  template_body : string prop option; [@option]
  template_s3_uri : string prop option; [@option]
  input_parameter : input_parameter list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_config_conformance_pack) -> ()

let yojson_of_aws_config_conformance_pack =
  (function
   | {
       delivery_s3_bucket = v_delivery_s3_bucket;
       delivery_s3_key_prefix = v_delivery_s3_key_prefix;
       id = v_id;
       name = v_name;
       template_body = v_template_body;
       template_s3_uri = v_template_s3_uri;
       input_parameter = v_input_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_input_parameter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_input_parameter)
               v_input_parameter
           in
           let bnd = "input_parameter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_template_s3_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_s3_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_template_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_body", arg in
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
         match v_delivery_s3_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delivery_s3_key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delivery_s3_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delivery_s3_bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_config_conformance_pack ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_config_conformance_pack

[@@@deriving.end]

let input_parameter ~parameter_name ~parameter_value () :
    input_parameter =
  { parameter_name; parameter_value }

let aws_config_conformance_pack ?delivery_s3_bucket
    ?delivery_s3_key_prefix ?id ?template_body ?template_s3_uri ~name
    ~input_parameter () : aws_config_conformance_pack =
  {
    delivery_s3_bucket;
    delivery_s3_key_prefix;
    id;
    name;
    template_body;
    template_s3_uri;
    input_parameter;
  }

type t = {
  tf_name : string;
  arn : string prop;
  delivery_s3_bucket : string prop;
  delivery_s3_key_prefix : string prop;
  id : string prop;
  name : string prop;
  template_body : string prop;
  template_s3_uri : string prop;
}

let make ?delivery_s3_bucket ?delivery_s3_key_prefix ?id
    ?template_body ?template_s3_uri ~name ~input_parameter __id =
  let __type = "aws_config_conformance_pack" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       delivery_s3_bucket =
         Prop.computed __type __id "delivery_s3_bucket";
       delivery_s3_key_prefix =
         Prop.computed __type __id "delivery_s3_key_prefix";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       template_body = Prop.computed __type __id "template_body";
       template_s3_uri = Prop.computed __type __id "template_s3_uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_conformance_pack
        (aws_config_conformance_pack ?delivery_s3_bucket
           ?delivery_s3_key_prefix ?id ?template_body
           ?template_s3_uri ~name ~input_parameter ());
    attrs = __attrs;
  }

let register ?tf_module ?delivery_s3_bucket ?delivery_s3_key_prefix
    ?id ?template_body ?template_s3_uri ~name ~input_parameter __id =
  let (r : _ Tf_core.resource) =
    make ?delivery_s3_bucket ?delivery_s3_key_prefix ?id
      ?template_body ?template_s3_uri ~name ~input_parameter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
