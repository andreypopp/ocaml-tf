(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameter = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : parameter) -> ()

let yojson_of_parameter =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameter

[@@@deriving.end]

type aws_memorydb_parameter_group = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_memorydb_parameter_group) -> ()

let yojson_of_aws_memorydb_parameter_group =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
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
       `Assoc bnds
    : aws_memorydb_parameter_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_memorydb_parameter_group

[@@@deriving.end]

let aws_memorydb_parameter_group ?id ?tags ~name () :
    aws_memorydb_parameter_group =
  { id; name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  family : string prop;
  id : string prop;
  name : string prop;
  parameter : parameter list prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~name __id =
  let __type = "aws_memorydb_parameter_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       family = Prop.computed __type __id "family";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parameter = Prop.computed __type __id "parameter";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_memorydb_parameter_group
        (aws_memorydb_parameter_group ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
