(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type location = {
  method_ : string prop option; [@option] [@key "method"]
  name : string prop option; [@option]
  path : string prop option; [@option]
  status_code : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : location) -> ()

let yojson_of_location =
  (function
   | {
       method_ = v_method_;
       name = v_name;
       path = v_path;
       status_code = v_status_code;
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
         match v_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_location

[@@@deriving.end]

type aws_api_gateway_documentation_part = {
  id : string prop option; [@option]
  properties : string prop;
  rest_api_id : string prop;
  location : location list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_documentation_part) -> ()

let yojson_of_aws_api_gateway_documentation_part =
  (function
   | {
       id = v_id;
       properties = v_properties;
       rest_api_id = v_rest_api_id;
       location = v_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_location v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_properties in
         ("properties", arg) :: bnds
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
    : aws_api_gateway_documentation_part ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_documentation_part

[@@@deriving.end]

let location ?method_ ?name ?path ?status_code ~type_ () : location =
  { method_; name; path; status_code; type_ }

let aws_api_gateway_documentation_part ?id ~properties ~rest_api_id
    ~location () : aws_api_gateway_documentation_part =
  { id; properties; rest_api_id; location }

type t = {
  id : string prop;
  properties : string prop;
  rest_api_id : string prop;
}

let make ?id ~properties ~rest_api_id ~location __id =
  let __type = "aws_api_gateway_documentation_part" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       properties = Prop.computed __type __id "properties";
       rest_api_id = Prop.computed __type __id "rest_api_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_documentation_part
        (aws_api_gateway_documentation_part ?id ~properties
           ~rest_api_id ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~properties ~rest_api_id ~location __id =
  let (r : _ Tf_core.resource) =
    make ?id ~properties ~rest_api_id ~location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
