(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_thing = {
  attributes : (string * string prop) list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  thing_type_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_thing) -> ()

let yojson_of_aws_iot_thing =
  (function
   | {
       attributes = v_attributes;
       id = v_id;
       name = v_name;
       thing_type_name = v_thing_type_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_thing_type_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "thing_type_name", arg in
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
         match v_attributes with
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
             let bnd = "attributes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iot_thing -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_thing

[@@@deriving.end]

let aws_iot_thing ?attributes ?id ?thing_type_name ~name () :
    aws_iot_thing =
  { attributes; id; name; thing_type_name }

type t = {
  tf_name : string;
  arn : string prop;
  attributes : (string * string) list prop;
  default_client_id : string prop;
  id : string prop;
  name : string prop;
  thing_type_name : string prop;
  version : float prop;
}

let make ?attributes ?id ?thing_type_name ~name __id =
  let __type = "aws_iot_thing" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       attributes = Prop.computed __type __id "attributes";
       default_client_id =
         Prop.computed __type __id "default_client_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       thing_type_name = Prop.computed __type __id "thing_type_name";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_thing
        (aws_iot_thing ?attributes ?id ?thing_type_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?attributes ?id ?thing_type_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?attributes ?id ?thing_type_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
