(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_export = {
  accepts : string prop option; [@option]
  export_type : string prop;
  id : string prop option; [@option]
  parameters : (string * string prop) list option; [@option]
  rest_api_id : string prop;
  stage_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_export) -> ()

let yojson_of_aws_api_gateway_export =
  (function
   | {
       accepts = v_accepts;
       export_type = v_export_type;
       id = v_id;
       parameters = v_parameters;
       rest_api_id = v_rest_api_id;
       stage_name = v_stage_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stage_name in
         ("stage_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
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
         let arg = yojson_of_prop yojson_of_string v_export_type in
         ("export_type", arg) :: bnds
       in
       let bnds =
         match v_accepts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accepts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_export -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_export

[@@@deriving.end]

let aws_api_gateway_export ?accepts ?id ?parameters ~export_type
    ~rest_api_id ~stage_name () : aws_api_gateway_export =
  { accepts; export_type; id; parameters; rest_api_id; stage_name }

type t = {
  accepts : string prop;
  body : string prop;
  content_disposition : string prop;
  content_type : string prop;
  export_type : string prop;
  id : string prop;
  parameters : (string * string) list prop;
  rest_api_id : string prop;
  stage_name : string prop;
}

let make ?accepts ?id ?parameters ~export_type ~rest_api_id
    ~stage_name __id =
  let __type = "aws_api_gateway_export" in
  let __attrs =
    ({
       accepts = Prop.computed __type __id "accepts";
       body = Prop.computed __type __id "body";
       content_disposition =
         Prop.computed __type __id "content_disposition";
       content_type = Prop.computed __type __id "content_type";
       export_type = Prop.computed __type __id "export_type";
       id = Prop.computed __type __id "id";
       parameters = Prop.computed __type __id "parameters";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       stage_name = Prop.computed __type __id "stage_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_export
        (aws_api_gateway_export ?accepts ?id ?parameters ~export_type
           ~rest_api_id ~stage_name ());
    attrs = __attrs;
  }

let register ?tf_module ?accepts ?id ?parameters ~export_type
    ~rest_api_id ~stage_name __id =
  let (r : _ Tf_core.resource) =
    make ?accepts ?id ?parameters ~export_type ~rest_api_id
      ~stage_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
