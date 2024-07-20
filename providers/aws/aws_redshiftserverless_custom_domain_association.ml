(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshiftserverless_custom_domain_association = {
  custom_domain_certificate_arn : string prop;
  custom_domain_name : string prop;
  workgroup_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_redshiftserverless_custom_domain_association) -> ()

let yojson_of_aws_redshiftserverless_custom_domain_association =
  (function
   | {
       custom_domain_certificate_arn =
         v_custom_domain_certificate_arn;
       custom_domain_name = v_custom_domain_name;
       workgroup_name = v_workgroup_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_workgroup_name
         in
         ("workgroup_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_domain_name
         in
         ("custom_domain_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_custom_domain_certificate_arn
         in
         ("custom_domain_certificate_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshiftserverless_custom_domain_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshiftserverless_custom_domain_association

[@@@deriving.end]

let aws_redshiftserverless_custom_domain_association
    ~custom_domain_certificate_arn ~custom_domain_name
    ~workgroup_name () :
    aws_redshiftserverless_custom_domain_association =
  {
    custom_domain_certificate_arn;
    custom_domain_name;
    workgroup_name;
  }

type t = {
  tf_name : string;
  custom_domain_certificate_arn : string prop;
  custom_domain_certificate_expiry_time : string prop;
  custom_domain_name : string prop;
  id : string prop;
  workgroup_name : string prop;
}

let make ~custom_domain_certificate_arn ~custom_domain_name
    ~workgroup_name __id =
  let __type = "aws_redshiftserverless_custom_domain_association" in
  let __attrs =
    ({
       tf_name = __id;
       custom_domain_certificate_arn =
         Prop.computed __type __id "custom_domain_certificate_arn";
       custom_domain_certificate_expiry_time =
         Prop.computed __type __id
           "custom_domain_certificate_expiry_time";
       custom_domain_name =
         Prop.computed __type __id "custom_domain_name";
       id = Prop.computed __type __id "id";
       workgroup_name = Prop.computed __type __id "workgroup_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftserverless_custom_domain_association
        (aws_redshiftserverless_custom_domain_association
           ~custom_domain_certificate_arn ~custom_domain_name
           ~workgroup_name ());
    attrs = __attrs;
  }

let register ?tf_module ~custom_domain_certificate_arn
    ~custom_domain_name ~workgroup_name __id =
  let (r : _ Tf_core.resource) =
    make ~custom_domain_certificate_arn ~custom_domain_name
      ~workgroup_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
