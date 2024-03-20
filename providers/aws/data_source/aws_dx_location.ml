(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dx_location = {
  id : string prop option; [@option]
  location_code : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dx_location) -> ()

let yojson_of_aws_dx_location =
  (function
   | { id = v_id; location_code = v_location_code } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location_code in
         ("location_code", arg) :: bnds
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
    : aws_dx_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_location

[@@@deriving.end]

let aws_dx_location ?id ~location_code () : aws_dx_location =
  { id; location_code }

type t = {
  available_macsec_port_speeds : string list prop;
  available_port_speeds : string list prop;
  available_providers : string list prop;
  id : string prop;
  location_code : string prop;
  location_name : string prop;
}

let make ?id ~location_code __id =
  let __type = "aws_dx_location" in
  let __attrs =
    ({
       available_macsec_port_speeds =
         Prop.computed __type __id "available_macsec_port_speeds";
       available_port_speeds =
         Prop.computed __type __id "available_port_speeds";
       available_providers =
         Prop.computed __type __id "available_providers";
       id = Prop.computed __type __id "id";
       location_code = Prop.computed __type __id "location_code";
       location_name = Prop.computed __type __id "location_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_location
        (aws_dx_location ?id ~location_code ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~location_code __id =
  let (r : _ Tf_core.resource) = make ?id ~location_code __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
