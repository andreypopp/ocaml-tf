(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_zone_association = {
  id : string prop option; [@option]
  vpc_id : string prop;
  vpc_region : string prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_zone_association) -> ()

let yojson_of_aws_route53_zone_association =
  (function
   | {
       id = v_id;
       vpc_id = v_vpc_id;
       vpc_region = v_vpc_region;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         match v_vpc_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
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
    : aws_route53_zone_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_zone_association

[@@@deriving.end]

let aws_route53_zone_association ?id ?vpc_region ~vpc_id ~zone_id ()
    : aws_route53_zone_association =
  { id; vpc_id; vpc_region; zone_id }

type t = {
  tf_name : string;
  id : string prop;
  owning_account : string prop;
  vpc_id : string prop;
  vpc_region : string prop;
  zone_id : string prop;
}

let make ?id ?vpc_region ~vpc_id ~zone_id __id =
  let __type = "aws_route53_zone_association" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       owning_account = Prop.computed __type __id "owning_account";
       vpc_id = Prop.computed __type __id "vpc_id";
       vpc_region = Prop.computed __type __id "vpc_region";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_zone_association
        (aws_route53_zone_association ?id ?vpc_region ~vpc_id
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?vpc_region ~vpc_id ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?vpc_region ~vpc_id ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
