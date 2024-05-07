(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_shield_protection_health_check_association = {
  health_check_arn : string prop;
  id : string prop option; [@option]
  shield_protection_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_shield_protection_health_check_association) -> ()

let yojson_of_aws_shield_protection_health_check_association =
  (function
   | {
       health_check_arn = v_health_check_arn;
       id = v_id;
       shield_protection_id = v_shield_protection_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_shield_protection_id
         in
         ("shield_protection_id", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_health_check_arn
         in
         ("health_check_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_shield_protection_health_check_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_shield_protection_health_check_association

[@@@deriving.end]

let aws_shield_protection_health_check_association ?id
    ~health_check_arn ~shield_protection_id () :
    aws_shield_protection_health_check_association =
  { health_check_arn; id; shield_protection_id }

type t = {
  tf_name : string;
  health_check_arn : string prop;
  id : string prop;
  shield_protection_id : string prop;
}

let make ?id ~health_check_arn ~shield_protection_id __id =
  let __type = "aws_shield_protection_health_check_association" in
  let __attrs =
    ({
       tf_name = __id;
       health_check_arn =
         Prop.computed __type __id "health_check_arn";
       id = Prop.computed __type __id "id";
       shield_protection_id =
         Prop.computed __type __id "shield_protection_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_shield_protection_health_check_association
        (aws_shield_protection_health_check_association ?id
           ~health_check_arn ~shield_protection_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~health_check_arn ~shield_protection_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~health_check_arn ~shield_protection_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
