(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_inspector_resource_group = {
  id : string prop option; [@option]
  tags : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_inspector_resource_group) -> ()

let yojson_of_aws_inspector_resource_group =
  (function
   | { id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_tags
         in
         ("tags", arg) :: bnds
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
    : aws_inspector_resource_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_inspector_resource_group

[@@@deriving.end]

let aws_inspector_resource_group ?id ~tags () :
    aws_inspector_resource_group =
  { id; tags }

type t = {
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
}

let make ?id ~tags __id =
  let __type = "aws_inspector_resource_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_inspector_resource_group
        (aws_inspector_resource_group ?id ~tags ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~tags __id =
  let (r : _ Tf_core.resource) = make ?id ~tags __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
