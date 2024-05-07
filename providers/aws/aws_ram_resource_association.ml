(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ram_resource_association = {
  id : string prop option; [@option]
  resource_arn : string prop;
  resource_share_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ram_resource_association) -> ()

let yojson_of_aws_ram_resource_association =
  (function
   | {
       id = v_id;
       resource_arn = v_resource_arn;
       resource_share_arn = v_resource_share_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_share_arn
         in
         ("resource_share_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
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
    : aws_ram_resource_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ram_resource_association

[@@@deriving.end]

let aws_ram_resource_association ?id ~resource_arn
    ~resource_share_arn () : aws_ram_resource_association =
  { id; resource_arn; resource_share_arn }

type t = {
  tf_name : string;
  id : string prop;
  resource_arn : string prop;
  resource_share_arn : string prop;
}

let make ?id ~resource_arn ~resource_share_arn __id =
  let __type = "aws_ram_resource_association" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       resource_arn = Prop.computed __type __id "resource_arn";
       resource_share_arn =
         Prop.computed __type __id "resource_share_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ram_resource_association
        (aws_ram_resource_association ?id ~resource_arn
           ~resource_share_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~resource_arn ~resource_share_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ~resource_arn ~resource_share_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
