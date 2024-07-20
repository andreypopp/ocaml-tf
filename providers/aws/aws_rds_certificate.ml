(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_rds_certificate = {
  certificate_identifier : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rds_certificate) -> ()

let yojson_of_aws_rds_certificate =
  (function
   | { certificate_identifier = v_certificate_identifier; id = v_id }
     ->
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
         let arg =
           yojson_of_prop yojson_of_string v_certificate_identifier
         in
         ("certificate_identifier", arg) :: bnds
       in
       `Assoc bnds
    : aws_rds_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rds_certificate

[@@@deriving.end]

let aws_rds_certificate ?id ~certificate_identifier () :
    aws_rds_certificate =
  { certificate_identifier; id }

type t = {
  tf_name : string;
  certificate_identifier : string prop;
  id : string prop;
}

let make ?id ~certificate_identifier __id =
  let __type = "aws_rds_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_identifier =
         Prop.computed __type __id "certificate_identifier";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_certificate
        (aws_rds_certificate ?id ~certificate_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~certificate_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ~certificate_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
