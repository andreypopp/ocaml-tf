(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_controltower_controls = {
  id : string prop option; [@option]
  target_identifier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_controltower_controls) -> ()

let yojson_of_aws_controltower_controls =
  (function
   | { id = v_id; target_identifier = v_target_identifier } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_identifier
         in
         ("target_identifier", arg) :: bnds
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
    : aws_controltower_controls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_controltower_controls

[@@@deriving.end]

let aws_controltower_controls ?id ~target_identifier () :
    aws_controltower_controls =
  { id; target_identifier }

type t = {
  tf_name : string;
  enabled_controls : string list prop;
  id : string prop;
  target_identifier : string prop;
}

let make ?id ~target_identifier __id =
  let __type = "aws_controltower_controls" in
  let __attrs =
    ({
       tf_name = __id;
       enabled_controls =
         Prop.computed __type __id "enabled_controls";
       id = Prop.computed __type __id "id";
       target_identifier =
         Prop.computed __type __id "target_identifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_controltower_controls
        (aws_controltower_controls ?id ~target_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~target_identifier __id =
  let (r : _ Tf_core.resource) = make ?id ~target_identifier __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
