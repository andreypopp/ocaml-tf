(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_workspaces_image = {
  id : string prop option; [@option]
  image_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_workspaces_image) -> ()

let yojson_of_aws_workspaces_image =
  (function
   | { id = v_id; image_id = v_image_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_id in
         ("image_id", arg) :: bnds
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
    : aws_workspaces_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_workspaces_image

[@@@deriving.end]

let aws_workspaces_image ?id ~image_id () : aws_workspaces_image =
  { id; image_id }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  image_id : string prop;
  name : string prop;
  operating_system_type : string prop;
  required_tenancy : string prop;
  state : string prop;
}

let make ?id ~image_id __id =
  let __type = "aws_workspaces_image" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       image_id = Prop.computed __type __id "image_id";
       name = Prop.computed __type __id "name";
       operating_system_type =
         Prop.computed __type __id "operating_system_type";
       required_tenancy =
         Prop.computed __type __id "required_tenancy";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_workspaces_image
        (aws_workspaces_image ?id ~image_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~image_id __id =
  let (r : _ Tf_core.resource) = make ?id ~image_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
