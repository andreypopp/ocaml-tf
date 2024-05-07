(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_worklink_website_certificate_authority_association = {
  certificate : string prop;
  display_name : string prop option; [@option]
  fleet_arn : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_worklink_website_certificate_authority_association) ->
  ()

let yojson_of_aws_worklink_website_certificate_authority_association
    =
  (function
   | {
       certificate = v_certificate;
       display_name = v_display_name;
       fleet_arn = v_fleet_arn;
       id = v_id;
     } ->
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
         let arg = yojson_of_prop yojson_of_string v_fleet_arn in
         ("fleet_arn", arg) :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_certificate in
         ("certificate", arg) :: bnds
       in
       `Assoc bnds
    : aws_worklink_website_certificate_authority_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_aws_worklink_website_certificate_authority_association

[@@@deriving.end]

let aws_worklink_website_certificate_authority_association
    ?display_name ?id ~certificate ~fleet_arn () :
    aws_worklink_website_certificate_authority_association =
  { certificate; display_name; fleet_arn; id }

type t = {
  tf_name : string;
  certificate : string prop;
  display_name : string prop;
  fleet_arn : string prop;
  id : string prop;
  website_ca_id : string prop;
}

let make ?display_name ?id ~certificate ~fleet_arn __id =
  let __type =
    "aws_worklink_website_certificate_authority_association"
  in
  let __attrs =
    ({
       tf_name = __id;
       certificate = Prop.computed __type __id "certificate";
       display_name = Prop.computed __type __id "display_name";
       fleet_arn = Prop.computed __type __id "fleet_arn";
       id = Prop.computed __type __id "id";
       website_ca_id = Prop.computed __type __id "website_ca_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_worklink_website_certificate_authority_association
        (aws_worklink_website_certificate_authority_association
           ?display_name ?id ~certificate ~fleet_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ~certificate ~fleet_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ~certificate ~fleet_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
