(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ram_principal_association = {
  id : string prop option; [@option]
  principal : string prop;
  resource_share_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ram_principal_association) -> ()

let yojson_of_aws_ram_principal_association =
  (function
   | {
       id = v_id;
       principal = v_principal;
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
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
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
    : aws_ram_principal_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ram_principal_association

[@@@deriving.end]

let aws_ram_principal_association ?id ~principal ~resource_share_arn
    () : aws_ram_principal_association =
  { id; principal; resource_share_arn }

type t = {
  id : string prop;
  principal : string prop;
  resource_share_arn : string prop;
}

let make ?id ~principal ~resource_share_arn __id =
  let __type = "aws_ram_principal_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       principal = Prop.computed __type __id "principal";
       resource_share_arn =
         Prop.computed __type __id "resource_share_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ram_principal_association
        (aws_ram_principal_association ?id ~principal
           ~resource_share_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~principal ~resource_share_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ~principal ~resource_share_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
