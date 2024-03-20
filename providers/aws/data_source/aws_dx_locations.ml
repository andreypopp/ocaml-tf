(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dx_locations = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dx_locations) -> ()

let yojson_of_aws_dx_locations =
  (function
   | { id = v_id } ->
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
       `Assoc bnds
    : aws_dx_locations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_locations

[@@@deriving.end]

let aws_dx_locations ?id () : aws_dx_locations = { id }

type t = { id : string prop; location_codes : string list prop }

let make ?id __id =
  let __type = "aws_dx_locations" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location_codes = Prop.computed __type __id "location_codes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_dx_locations (aws_dx_locations ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
