(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_outposts_asset = {
  arn : string prop;
  asset_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_outposts_asset) -> ()

let yojson_of_aws_outposts_asset =
  (function
   | { arn = v_arn; asset_id = v_asset_id; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_asset_id in
         ("asset_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_outposts_asset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_outposts_asset

[@@@deriving.end]

let aws_outposts_asset ?id ~arn ~asset_id () : aws_outposts_asset =
  { arn; asset_id; id }

type t = {
  tf_name : string;
  arn : string prop;
  asset_id : string prop;
  asset_type : string prop;
  host_id : string prop;
  id : string prop;
  rack_elevation : float prop;
  rack_id : string prop;
}

let make ?id ~arn ~asset_id __id =
  let __type = "aws_outposts_asset" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       asset_id = Prop.computed __type __id "asset_id";
       asset_type = Prop.computed __type __id "asset_type";
       host_id = Prop.computed __type __id "host_id";
       id = Prop.computed __type __id "id";
       rack_elevation = Prop.computed __type __id "rack_elevation";
       rack_id = Prop.computed __type __id "rack_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_outposts_asset
        (aws_outposts_asset ?id ~arn ~asset_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~arn ~asset_id __id =
  let (r : _ Tf_core.resource) = make ?id ~arn ~asset_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
