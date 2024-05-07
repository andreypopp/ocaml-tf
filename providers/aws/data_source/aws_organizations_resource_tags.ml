(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_organizations_resource_tags = {
  id : string prop option; [@option]
  resource_id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_organizations_resource_tags) -> ()

let yojson_of_aws_organizations_resource_tags =
  (function
   | { id = v_id; resource_id = v_resource_id; tags = v_tags } ->
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
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
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
    : aws_organizations_resource_tags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_organizations_resource_tags

[@@@deriving.end]

let aws_organizations_resource_tags ?id ?tags ~resource_id () :
    aws_organizations_resource_tags =
  { id; resource_id; tags }

type t = {
  tf_name : string;
  id : string prop;
  resource_id : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~resource_id __id =
  let __type = "aws_organizations_resource_tags" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       resource_id = Prop.computed __type __id "resource_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_resource_tags
        (aws_organizations_resource_tags ?id ?tags ~resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~resource_id __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~resource_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
