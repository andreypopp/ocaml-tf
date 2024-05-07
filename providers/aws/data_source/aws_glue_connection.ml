(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type physical_connection_requirements = {
  availability_zone : string prop;
  security_group_id_list : string prop list;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : physical_connection_requirements) -> ()

let yojson_of_physical_connection_requirements =
  (function
   | {
       availability_zone = v_availability_zone;
       security_group_id_list = v_security_group_id_list;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_group_id_list
         in
         ("security_group_id_list", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       `Assoc bnds
    : physical_connection_requirements ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_physical_connection_requirements

[@@@deriving.end]

type aws_glue_connection = {
  id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_connection) -> ()

let yojson_of_aws_glue_connection =
  (function
   | { id = v_id; tags = v_tags } ->
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
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_glue_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_connection

[@@@deriving.end]

let aws_glue_connection ?tags ~id () : aws_glue_connection =
  { id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  catalog_id : string prop;
  connection_properties : (string * string) list prop;
  connection_type : string prop;
  description : string prop;
  id : string prop;
  match_criteria : string list prop;
  name : string prop;
  physical_connection_requirements :
    physical_connection_requirements list prop;
  tags : (string * string) list prop;
}

let make ?tags ~id __id =
  let __type = "aws_glue_connection" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       catalog_id = Prop.computed __type __id "catalog_id";
       connection_properties =
         Prop.computed __type __id "connection_properties";
       connection_type = Prop.computed __type __id "connection_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       match_criteria = Prop.computed __type __id "match_criteria";
       name = Prop.computed __type __id "name";
       physical_connection_requirements =
         Prop.computed __type __id "physical_connection_requirements";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_connection
        (aws_glue_connection ?tags ~id ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ~id __id =
  let (r : _ Tf_core.resource) = make ?tags ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
